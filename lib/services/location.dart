import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  void getCurrentLocation(BuildContext context) async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      double latitude = position.latitude;
      double longitude = position.longitude;
      print('latitude is $latitude');
      print('longitude is $longitude');
    } catch (e) {
      print(e);
    }
  }
}
