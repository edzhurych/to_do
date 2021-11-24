import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapTab extends StatefulWidget {
  const MapTab({Key? key}) : super(key: key);

  @override
  State<MapTab> createState() => _MapTabState();
}

class _MapTabState extends State<MapTab> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _oldTrafford = CameraPosition(
    target: LatLng(53.463493, -2.292279),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.hybrid,
      initialCameraPosition: _oldTrafford,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
      markers: _markers(),
    );
  }

  Set<Marker> _markers() {
    final result = <Marker>{};

    result.add(const Marker(
      markerId: MarkerId('id'),
      position: LatLng(53.463493, -2.292279),
    ));

    return result;
  }
}
