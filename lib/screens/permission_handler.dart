import 'package:permission_handler/permission_handler.dart';

Future<void> requestLocationPermission() async {
  final status = await Permission.location.request();

  if (status.isGranted) {
    // Permission is granted
  } else if (status.isDenied) {
    // Permission is denied
    // You can show a dialog explaining why the permission is needed
  } else if (status.isPermanentlyDenied) {
    // The user has permanently denied the permission
    // Open app settings for the user to change permission
    openAppSettings();
  }
}
