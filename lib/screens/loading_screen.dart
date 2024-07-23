import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'permission_handler.dart';
import 'package:weatherapp/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Location().getCurrentLocation(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'chaitanya karmalkar',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
