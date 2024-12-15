import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:sizer/sizer.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back, size: 20.sp),
                    SizedBox(width: 18.w),
                    Text(
                      'hay elgamaa street',
                      style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(Icons.search, size: 20.sp),
                  ],
                ),
              ),
              width: 20.w,
              height: 5.h,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: 80.h,
            width: 70.w,
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(51.5, -0.09),
                zoom: 13.0,
              ),
              children: [
                TileLayer(
                  urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  subdomains: ['a', 'b', 'c'],
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      point: LatLng(51.5, -0.09),
                      width: 80.0,
                      height: 80.0,
                      rotate: true,
                      builder: (context) => Icon(
                        Icons.location_on,
                        color: Colors.lightGreen,
                        size: 55.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
