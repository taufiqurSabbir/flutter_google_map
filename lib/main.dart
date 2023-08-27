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
  late final GoogleMapController _googleMapController;


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
          markers: <Marker>{
            Marker(markerId: MarkerId('custom-marker1'),position: LatLng(25.395777196167153, 88.98818349205334),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
              infoWindow: InfoWindow(title: 'Taufiqur House'),
              draggable: true,
              onDragStart: (LatLng latlang){
              print(latlang);
              },
              onDragEnd: (LatLng latlang){
              print(latlang);
              }

            ),
            Marker(markerId: MarkerId('custom-marker2'),position: LatLng(25.39606432360153, 88.9906243022543),
                icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
                infoWindow: InfoWindow(title: 'Adda place'),
                draggable: true,
                onDragStart: (LatLng latlang){
                  print(latlang);
                },
                onDragEnd: (LatLng latlang){
                  print(latlang);
                }

            ),
            Marker(markerId: MarkerId('custom-marker3'),position: LatLng(25.39583534743859, 88.99169450415594),
                icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueMagenta),
                infoWindow: InfoWindow(title: 'Childhood School'),
                draggable: true,
                onDragStart: (LatLng latlang){
                  print(latlang);
                },
                onDragEnd: (LatLng latlang){
                  print(latlang);
                }

            ),
            Marker(markerId: MarkerId('custom-marker4'),position: LatLng(25.394818888535823, 88.99076109490844),
                icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
                infoWindow: InfoWindow(title: 'High school'),
                draggable: true,
                onDragStart: (LatLng latlang){
                  print(latlang);
                },
                onDragEnd: (LatLng latlang){
                  print(latlang);
                }

            ),
            Marker(markerId: MarkerId('custom-marker5'),position: LatLng(25.379629501597755, 88.97125315217168),
                icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
                infoWindow: InfoWindow(title: 'Sosuar Bari'),
                draggable: true,
                onDragStart: (LatLng latlang){
                  print(latlang);
                },
                onDragEnd: (LatLng latlang){
                  print(latlang);
                }

            ),
          },

          polylines: <Polyline>{
            Polyline(
              polylineId: PolylineId('poly_line_1'),
              color: Colors.teal,
              width: 10,
              visible: true,
              jointType: JointType.round,
              onTap: (){
                print('tapped on polyline');
              },
              points: [
                LatLng(25.395777196167153, 88.98818349205334),
                LatLng(25.39606432360153, 88.9906243022543),
                LatLng(25.379629501597755, 88.97125315217168),
                LatLng(25.394818888535823, 88.99076109490844)
              ]
            )
          },

          circles: <Circle>{
            Circle(
              circleId: CircleId('circle_1'),
              center:  LatLng(25.395777196167153, 88.98818349205334),
              radius: 200,
              strokeColor: Colors.indigoAccent,
              strokeWidth: 2,
              fillColor: Colors.black54,
              onTap: (){
                print('tap on circle');
              }
            ),
            Circle(
              circleId: CircleId('circle_2'),
              center:   LatLng(25.39606432360153, 88.9906243022543),
              radius: 200,
              strokeColor: Colors.indigoAccent,
              strokeWidth: 2,
              fillColor: Colors.green.shade100,
              onTap: (){
                print('tap on circle');
              }
            ),
            Circle(
                circleId: CircleId('circle_3'),
                center:   LatLng(25.379629501597755, 88.97125315217168),
                radius: 200,
                strokeColor: Colors.blueAccent,
                strokeWidth: 2,
                fillColor: Colors.blueAccent.shade100,
                onTap: (){
                  print('tap on circle');
                }
            ),
            Circle(
                circleId: CircleId('circle_4'),
                center:   LatLng(25.394818888535823, 88.99076109490844),
                radius: 200,
                strokeColor: Colors.purple,
                strokeWidth: 2,
                fillColor: Colors.deepPurpleAccent.shade100,
                onTap: (){
                  print('tap on circle');
                }
            ),
          },


        ));
  }
}
