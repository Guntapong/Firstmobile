import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  dynamic latitude = "";
  dynamic longittude = "";

  @override
  void initState() {
    // TODO: impLement initState
    super.initState();
    getLocation();
  }

  Future<void> getLocation() async {
    var location = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    dynamic address = await placemarkFromCoordinates(13.736717, 100.523186);
    print(address);

    setState(() {
      latitude = '${location.latitude}';
      longittude = '${location.longitude}';
    });

    print(location);
    print(location.latitude);
    print(location.longitude);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ละติจูต ' + latitude,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              'ลองติจูต ' + longittude,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
