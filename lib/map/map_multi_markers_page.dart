import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapMultiMarkersPage extends StatefulWidget {
  const MapMultiMarkersPage({super.key});

  @override
  State<MapMultiMarkersPage> createState() => _MapMultiMarkersPageState();
}

class _MapMultiMarkersPageState extends State<MapMultiMarkersPage> {
  Set<Marker> markers = {};

  void _setHospitalMarkers() {
    markers.addAll([
      _createMarker(
        id: 'bhayangkara',
        position: LatLng(-0.9286795700738542, 100.36568473743137),
        title: 'RS. Bhayangkara Padang',
        snippet: 'Jl. Jati No.1, Padang Timur',
      ),
      _createMarker(
        id: 'yos_sudarso',
        position: LatLng(-0.932627260841563, 100.36293815558521),
        title: 'RS Yos Sudarso',
        snippet: 'Jl. Situjuh I No.1, Padang Timur',
      ),
      _createMarker(
        id: 'ibnu_sina',
        position: LatLng(-0.9166648319908121, 100.36705802835445),
        title: 'RS Islam Ibnu Sina',
        snippet: 'Jl. Gajah Mada, Padang Utara',
      ),
      _createMarker(
        id: 'hermina',
        position: LatLng(-0.912888763099876, 100.36087821920061),
        title: 'RS Hermina Padang',
        snippet: 'Jl. Khatib Sulaiman, Padang Utara',
      ),
      _createMarker(
        id: 'mutiara_bunda',
        position: LatLng(-0.914261879519891, 100.35023521454679),
        title: 'RSIA Mutiara Bunda',
        snippet: 'Jl. S. Parman No.142, Padang Utara',
      ),
      _createMarker(
        id: 'cicik',
        position: LatLng(-0.9442986684470404, 100.3862841012775),
        title: 'RSIA CICIK',
        snippet: 'Jl. Dr. Sutomo No.94, Padang Timur',
      ),
      _createMarker(
        id: 'siti_hawa',
        position: LatLng(-0.9440504524220352, 100.37760152939953),
        title: 'RSIA Siti Hawa',
        snippet: 'Jl. Parak Gadang Raya No.35A, Padang Timur',
      ),
      _createMarker(
        id: 'semen_padang',
        position: LatLng(-0.9372088534228522, 100.39995376386528),
        title: 'Semen Padang Hospital',
        snippet: 'Jl. By Pass No.KM. 7, Pauh',
      ),
      _createMarker(
        id: 'selaguri',
        position: LatLng(-0.9372088534228522, 100.35798630323568),
        title: 'RSU Selaguri',
        snippet: 'Jl. Jend. A Yani No.26, Padang Barat',
      ),
      _createMarker(
        id: 'rasidin',
        position: LatLng(-0.8756338725094982, 100.39379549732253),
        title: 'RSUD dr. Rasidin',
        snippet: 'Jl. Air Paku, Kuranji',
      ),
      _createMarker(
        id: 'unand',
        position: LatLng(-0.9147245923571364, 100.45640466763383),
        title: 'RS Universitas Andalas',
        snippet: 'Kampus Unand, Limau Manis',
      ),
      _createMarker(
        id: 'pec',
        position: LatLng(-0.9406448860256864, 100.35383702235553),
        title: 'RSKM Padang Eye Center',
        snippet: 'Jl. Ujung Belakang Olo No.03',
      ),
      _createMarker(
        id: 'aisyiyah',
        position: LatLng(-0.9400814037369215, 100.36285395658996),
        title: 'RSU Aisyiyah',
        snippet: 'Jl. H. Agus Salim No.6, Padang Timur',
      ),
      _createMarker(
        id: 'reksodiwiryo',
        position: LatLng(-0.9459979666693333, 100.37187089243862),
        title: 'RS Tentara dr. Reksodiwiryo',
        snippet: 'Jl. Dr. Wahidin No.1, Padang Timur',
      ),
      _createMarker(
        id: 'djamil',
        position: LatLng(-0.9355735395322168, 100.36792598300484),
        title: 'RSUP Dr. M. Djamil',
        snippet: 'Jl. Perintis Kemerdekaan, Padang Timur',
      ),
      _createMarker(
        id: 'restu_ibu',
        position: LatLng(-0.9467320721955593, 100.3663709665631),
        title: 'RSIA Restu Ibu',
        snippet: 'Jl. Terandam No.5, Padang Timur',
      ),
    ]);
  }

  Marker _createMarker({
    required String id,
    required LatLng position,
    required String title,
    required String snippet,
  }) {
    return Marker(
      markerId: MarkerId(id),
      position: position,
      infoWindow: InfoWindow(title: title, snippet: snippet),
    );
  }

  @override
  void initState() {
    super.initState();
    _setHospitalMarkers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peta Rumah Sakit di Padang'),
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(-0.92, 100.37), // Posisi tengah kota Padang
          zoom: 12.5,
        ),
        markers: markers,
      ),
    );
  }
}
