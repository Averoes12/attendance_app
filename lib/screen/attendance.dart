import 'dart:async';

import 'package:attendance_app/component/rounded_button.dart';
import 'package:attendance_app/component/rounded_textfield.dart';
import 'package:attendance_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});
  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  String? _currentAddress;
  Position? _currentPosition;
  var remark = TextEditingController();

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }

  Future<void> _getCurrentPosition() async {
    final hasPermission = await _handleLocationPermission();

    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      setState(() => _currentPosition = position);
      _getAddressFromLatLng(_currentPosition!);
    }).catchError((e) {
      debugPrint(e.toString());
    });
  }

  Future<void> _getAddressFromLatLng(Position position) async {
    await placemarkFromCoordinates(
        _currentPosition!.latitude, _currentPosition!.longitude)
        .then((List<Placemark> placemarks) {
      Placemark place = placemarks[0];
      setState(() {
        _currentAddress =
        '${place.street}, ${place.subLocality},${place.subAdministrativeArea}, ${place.postalCode}';
      });
    }).catchError((e) {
      debugPrint(e);
    });
  }

  @override
  void initState() {
    _getCurrentPosition();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (_currentPosition != null && _currentAddress != null) ?
      Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
                target: LatLng(_currentPosition!.latitude, _currentPosition!.longitude),
                zoom: 20
            ),
            zoomControlsEnabled: false,
            zoomGesturesEnabled: false,
            rotateGesturesEnabled: false,
            scrollGesturesEnabled: false,
            markers: {
              Marker(
                  markerId: const MarkerId("position"),
                  position: LatLng(_currentPosition!.latitude, _currentPosition!.longitude)
              )
            },
          ),
          Positioned(
            bottom: 50,
            left: 50,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(height: 8,),
                          Icon(Icons.location_on),
                          SizedBox(height: 8,),
                        ],
                      ),
                      SizedBox(width: 16,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(DateFormat('HH:mm').format(DateTime.now())),
                          SizedBox(height: 8,),
                          SizedBox(
                            width: 200,
                            child: Text(
                              _currentAddress!,
                              softWrap: true,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 8,),
                  Divider(
                    height: 4,
                    color: colorDivider,
                    thickness: 3,
                  ),
                  SizedBox(height: 8,),
                  RoundedButton(
                    width: 200.0,
                    height: 40.0,
                    text: (DateTime.now().hour >= 17 ? "Clock Out" : "Clock In" ),
                    radius: 20.0,
                    onTap: (){
                    Navigator.pop(context);
                  },)
                ],
              ),
            ),
          )
        ],
      ) :
      Center(
        child: SpinKitThreeBounce(
          size: 20,
          itemBuilder: (context, index){
            return const DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorAccent
              ),
            );
          },
        )
      ),
    );
  }
}
