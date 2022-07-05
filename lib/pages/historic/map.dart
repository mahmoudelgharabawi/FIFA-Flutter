import 'package:fifa/classes/club.dart';
import 'package:fifa/classes/geral/size.dart';
import 'package:fifa/classes/image_class.dart';
import 'package:fifa/classes/my.dart';
import 'package:fifa/theme/colors.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:fifa/values/club_details.dart';
import 'package:fifa/values/clubs_all_names_list.dart';
import 'package:fifa/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late final List<BitmapDescriptor> _markersIcons = [];
  final List<Coordinates> coordinates = [];
  List<Marker> _markers = <Marker>[];
  late GoogleMapController controller;
  ////////////////////////////////////////////////////////////////////////////
//                               INIT                                     //
////////////////////////////////////////////////////////////////////////////
  @override
  void initState() {
    getClubIcon();
    super.initState();
  }
  getClubIcon() async{
    for (var clubName in clubsAllNameList) {
      try {
        _markersIcons.add(
            await BitmapDescriptor.fromAssetImage(
                const ImageConfiguration(size: Size(48, 48)),
                Images().getEscudo(clubName)
            )
        );
      }catch(e){
        _markersIcons.add(BitmapDescriptor.defaultMarker);
      }
    }
    setState((){});
  }
  getClubsLocation(GoogleMapController googleMapController) {
    controller = googleMapController;
    _markers = [];
    ClubDetails().mapDetails.forEach((key, value) {
      String clubName = key;

      if(ClubDetails().getCoordinate(clubName).latitude != 0){
        coordinates.add(ClubDetails().getCoordinate(clubName));

        //ADD MARKER
        _markers.add(
          Marker(
            markerId: MarkerId(clubName),
            position: LatLng(coordinates.last.latitude,coordinates.last.longitude),
            onTap: () {
              showModalBottomSheet(
                  barrierColor: Colors.transparent,
                  context: context, builder: (c){

                    try{
                      Club club = Club(index: clubsAllNameList.indexOf(clubName));
                      Future.delayed(const Duration(seconds: 3), () {
                        Navigator.pop(c);
                      });
                      return bottomSheet(club);
                    }catch(e){
                      Future.delayed(const Duration(seconds: 3), () {
                        Navigator.pop(c);
                      });
                      return bottomSheetGenericClub(clubName);
                    }


              });
            },
            //infoWindow: InfoWindow(title: clubName),
            //icon: clubsAllNameList.indexOf(clubName) < 40 ? _markersIcons[clubsAllNameList.indexOf(clubName)] : BitmapDescriptor.defaultMarker,
          ),
        );
      }
    });
  }

////////////////////////////////////////////////////////////////////////////
//                               BUILD                                    //
////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Images().getWallpaper(),
          Column(
            children: [
              backButtonText(context, 'Mapa'),

              Expanded(
                child: GoogleMap(
                mapType: MapType.satellite,
                tiltGesturesEnabled: false,
                indoorViewEnabled: false,
                rotateGesturesEnabled: false,
                initialCameraPosition: CameraPosition(
                  target: LatLng(ClubDetails().getCoordinate(My().clubName).latitude, ClubDetails().getCoordinate(My().clubName).longitude),
                  zoom: 6.0,
                ),
                onMapCreated: getClubsLocation,
                markers: Set<Marker>.of(_markers),
              ),
              ),

            ],
          ),
          SizedBox(
            height: Sized(context).height,
            child: Column(
              children: [
                const Spacer(),
                buttonZoomOut(),
              ],
            ),
          ),
        ],
      ),
    );
  }
////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////
  Widget buttonZoomOut(){
    return GestureDetector(
      onTap: (){
        CameraUpdate zoom = CameraUpdate.zoomTo(5);
        controller.moveCamera(zoom);
      },
      child: Container(
        height: 50,
        width: 50,
        margin: const EdgeInsets.all(8),
        color: AppColors().greyTransparent,
        child: const Center(child: Text('Zoom Out',textAlign:TextAlign.center,style: EstiloTextoBranco.text14,)),
      ),
    );
  }

  bottomSheet(Club club){
    return GestureDetector(
      onTap: (){
        //Zoom
        var newPosition = CameraPosition(
            target: LatLng(ClubDetails().getCoordinate(club.name).latitude, ClubDetails().getCoordinate(club.name).longitude),
            zoom: 16);
        CameraUpdate cameraUpdate = CameraUpdate.newCameraPosition(newPosition);
        controller.moveCamera(cameraUpdate);
      },
      child: Container(
        color: ClubDetails().getColors(club.name).primaryColor.withOpacity(0.5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(ClubDetails().getStadium(club.name)+': ',style: EstiloTextoPreto.text16),
                Text(ClubDetails().getStadiumCapacity(club.name).toString()),
              ],
            ),
            Row(
              children: [
                Image.asset(Images().getEscudo(club.name),height:50, width: 50),
                Text(club.name,style: EstiloTextoPreto.text20,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(club.nationality),
                Text(club.leagueName),
                Text(ClubDetails().getFoundationYear(club.name).toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  bottomSheetGenericClub(String clubName){
    return GestureDetector(
      onTap: (){
        //Zoom
        var newPosition = CameraPosition(
            target: LatLng(ClubDetails().getCoordinate(clubName).latitude, ClubDetails().getCoordinate(clubName).longitude),
            zoom: 16);
        CameraUpdate cameraUpdate = CameraUpdate.newCameraPosition(newPosition);
        controller.moveCamera(cameraUpdate);
      },
      child: Container(
        color: ClubDetails().getColors(clubName).primaryColor.withOpacity(0.5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(ClubDetails().getStadium(clubName)+': ',style: EstiloTextoPreto.text16),
                Text(ClubDetails().getStadiumCapacity(clubName).toString()),
              ],
            ),
            Row(
              children: [
                Image.asset(Images().getEscudo(clubName),height:50, width: 50),
                Text(clubName,style: EstiloTextoPreto.text20,),
              ],
            ),

          ],
        ),
      ),
    );
  }

}