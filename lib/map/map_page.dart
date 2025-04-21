import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Set<Marker> marker = {};

  void _addMarkers() {
    // Marker 1: Kota Padang
    marker.add(
      Marker(
        markerId: const MarkerId("Tempat 1"),
        position: const LatLng(-0.9172224055960007, 100.36058135009695),
        infoWindow: const InfoWindow(title: 'Kota Padang', snippet: 'Padang'),
      ),
    );

    // Marker 2: Bandar Buat
    marker.add(
      Marker(
        markerId: const MarkerId("Tempat 2"),
        position: const LatLng(-0.951209855481949, 100.42480152240472),
        infoWindow: const InfoWindow(title: 'Bandar Buat', snippet: 'Padang'),
      ),
    );

    // Marker 3: Jalan Rimbo Data No. 7
    marker.add(
      Marker(
        markerId: const MarkerId("Tempat 3"),
        position: const LatLng(-0.953000, 100.426000), // titik dekat Bandar Buat
        infoWindow: const InfoWindow(
          title: 'Jalan Rimbo Data No. 7',
          snippet: 'Bandar Buat, Lubuk Kilangan, Padang',
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _addMarkers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map Flutter"),
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(-0.942, 100.405), // pusat tengah antara semua marker
          zoom: 13.5,
        ),
        markers: marker,
      ),
    );
  }
}
