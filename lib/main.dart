import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

// 1. Marker
// 2. buttons
// 3. Circle
// 4.Polyline

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('google map'),
        ),
        body: GoogleMap(
          initialCameraPosition: CameraPosition(
            zoom: 15,
            bearing: 50,
            tilt: 10,
            target: LatLng(25.395775230292564, 88.98819592567972),
          ),
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          zoomControlsEnabled: true,
          zoomGesturesEnabled: true,
          trafficEnabled: true,
          compassEnabled: true,
          onTap: (LatLng l) {
            print(l);
          },
          onMapCreated: (GoogleMapController? controler) {
            print('map created');
          },
          mapType: MapType.normal,
          fortyFiveDegreeImageryEnabled: true,
          buildingsEnabled: true,
        ));
  }
}
