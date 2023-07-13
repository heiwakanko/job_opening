import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoggleMapOfHeiwaKanko extends StatefulWidget {
  const GoggleMapOfHeiwaKanko({Key? key}) : super(key: key);

  @override
  State<GoggleMapOfHeiwaKanko> createState() => _GoggleMapOfHeiwaKankoState();
}

class _GoggleMapOfHeiwaKankoState extends State<GoggleMapOfHeiwaKanko> {
  late GoogleMapController mapController;

  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    // Markerの初期化
    _markers.add(
      const Marker(
        markerId: MarkerId("heiwaKanko"),
        position: LatLng(35.86467, 139.597024),
        infoWindow: InfoWindow(title: "平和観光"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const CameraPosition initialCameraPosition = CameraPosition(
      target: LatLng(35.86467, 139.597024),
      zoom: 18,
      tilt: 45.0,
      bearing: 90.0,
    );

    return GoogleMap(
      initialCameraPosition: initialCameraPosition,
      markers: _markers,
      onMapCreated: (GoogleMapController controller) {
        mapController = controller;
      },
    );
  }
}
