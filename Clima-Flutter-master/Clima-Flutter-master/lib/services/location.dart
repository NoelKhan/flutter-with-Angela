import 'package:geolocator/geolocator.dart';

class Location {
  // enum position {
  double latitude;
  double longitude;
  //}

  Future<void> GetCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      print(position);

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
