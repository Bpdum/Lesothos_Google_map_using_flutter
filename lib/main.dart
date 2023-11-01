import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late GoogleMapController mapController; //contrller for Google map
  final Set<Marker> markers = new Set(); //markers for google map
  static const LatLng showLocation =
      const LatLng(-29.62319, 28.2334698); //location to show in map

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("lesothos map tour"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: GoogleMap(
        //Map widget from google_maps_flutter package
        zoomGesturesEnabled: true, //enable Zoom in, out on map
        initialCameraPosition: const CameraPosition(
          //innital position in map
          target: showLocation, //initial position
          zoom: 15.0, //initial zoom level
        ),
        markers: getmarkers(), //markers to show on map
        mapType: MapType.normal, //map type
        onMapCreated: (controller) {
          //method called when map is created
          setState(() {
            mapController = controller;
          });
        },
      ),
    );
  }

  Set<Marker> getmarkers() {
    markers.add(const Marker(
      markerId: MarkerId('sehlabathebe'),
      position: LatLng(-29.9029, 29.1162),
      infoWindow: InfoWindow(
        title: 'Sehlabathebe National Park',
        snippet: 'Description for Sehlabathebe National Park',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

    markers.add(const Marker(
      markerId: MarkerId('tsehlanyane_national_park'),
      position: LatLng(-28.919515, 28.458656171311),
      infoWindow: InfoWindow(
        title: 'Tsehlanyane National Park',
        snippet: 'Description for Tsehlanyane National Park',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

    markers.add(const Marker(
      markerId: MarkerId('maseru'),
      position: LatLng(29.3151, 27.4869),
      infoWindow: InfoWindow(
        title: 'Maseru',
        snippet: 'Description for Maseru',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

    markers.add(const Marker(
      markerId: MarkerId('morija'),
      position: LatLng(-29.6265599, 27.508489),
      infoWindow: InfoWindow(
        title: 'Morija',
        snippet: 'Description for Morija',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

    markers.add(const Marker(
      markerId: MarkerId('mohale_dam'),
      position: LatLng(29.4580, 28.0963),
      infoWindow: InfoWindow(
        title: 'Mohale Dam',
        snippet: 'Description for Mohale Dam',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

    markers.add(const Marker(
      markerId: MarkerId('ha_kome'),
      position: LatLng(-29.237278, 27.866722),
      infoWindow: InfoWindow(
        title: 'Ha Kome',
        snippet: 'Description for Ha Kome',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

    markers.add(const Marker(
      markerId: MarkerId('leribe'),
      position: LatLng(28.8638, 28.0479),
      infoWindow: InfoWindow(
        title: 'Leribe',
        snippet: 'Description for Leribe',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

    markers.add(const Marker(
      markerId: MarkerId('liphofung'),
      position: LatLng(28.7529, 28.4957),
      infoWindow: InfoWindow(
        title: 'Liphofung',
        snippet: 'Description for Liphofung',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

    markers.add(const Marker(
      markerId: MarkerId('bokong'),
      position: LatLng(29.3462, 28.4645),
      infoWindow: InfoWindow(
        title: 'Bokong',
        snippet: 'Description for Bokong',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

    markers.add(const Marker(
      markerId: MarkerId('katse_dam'),
      position: LatLng(29.3369, 28.5061),
      infoWindow: InfoWindow(
        title: 'Katse Dam',
        snippet: 'Description for Katse Dam',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

    markers.add(const Marker(
      markerId: MarkerId('semonkong'),
      position: LatLng(29.8421, 28.0497),
      infoWindow: InfoWindow(
        title: 'Semonkong',
        snippet: 'Description for Semonkong',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

    markers.add(const Marker(
      markerId: MarkerId('polihali_dam'),
      position: LatLng(-29.327330, 28.987870),
      infoWindow: InfoWindow(
        title: 'Polihali Dam',
        snippet: 'Description for Polihali Dam',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

    return markers;
  }
}
