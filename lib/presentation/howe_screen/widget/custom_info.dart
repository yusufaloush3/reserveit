import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:reservelt/constants/my_colors.dart';
import 'package:reservelt/widgets/custom_text.dart';



class CustomInfo extends StatefulWidget {
  const CustomInfo({Key? key}) : super(key: key);

  @override
  State<CustomInfo> createState() => _CustomInfoState();
}

class _CustomInfoState extends State<CustomInfo> {
  GoogleMapController? mapController; //contrller for Google map
  final Set<Marker> markers = new Set();


  Set<Marker> getmarkers() { //markers to place on map
    setState(() {
      markers.add(Marker( //add first marker
        markerId: MarkerId(1.toString()),
        position:LatLng(31.010025079622235, 31.422945629799504), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Marker Title First ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
      //add more markers here
    });

    return markers;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            customText(
              text: 'About Sushi Bar:',
              color: MyColors.meanColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 6,
            ),
            customText(
              text: 'Japanese restaurant',
              color: Colors.black,
              fontSize: 15.sp,
            ),
            const SizedBox(
              height: 20,
            ),
            customText(
              text: 'Location',
              color: MyColors.meanColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 160.h,
              child: GoogleMap(
                onMapCreated: (controller) {
                  setState(() {
                    mapController = controller;
                  });
                },
                markers: getmarkers(),
                initialCameraPosition: CameraPosition(
                  target: LatLng(31.010025079622235, 31.422945629799504),
                  zoom: 11.0,
                ),
                // markers: myMarker,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            customText(
              text: 'Contact :',
              color: MyColors.meanColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.call,
                        color: MyColors.meanColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.mail,
                        color: MyColors.meanColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        MdiIcons.web,
                        color: MyColors.meanColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.0.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText(
                        text: '0161 0364 894613',
                        color: Colors.black,
                        fontSize: 14.sp,
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      customText(
                        text: 'Support@reserveit.com',
                        color: Colors.black,
                        fontSize: 14.sp,
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      customText(
                        text: 'www.lesushibar.com',
                        color: Colors.black,
                        fontSize: 14.sp,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
