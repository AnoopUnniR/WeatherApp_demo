import 'package:geolocator/geolocator.dart';
import 'package:weather_app_demo/infrastructure/weather_services.dart';

class WeatherLocationRepository {
  Future getLocation(String lang) async {
    bool isServiceEnabled;
    LocationPermission locationPermission;
    isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isServiceEnabled) {
      return Future.error("Location not enabled");
    }
    //checking status of permission
    locationPermission = await Geolocator.checkPermission();
    if (locationPermission == LocationPermission.deniedForever) {
      return Future.error("Location persmission denied forever!");
    } else if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        return Future.error("Location Presmission denied");
      }
    }

    //getting current position of user
    return await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high)
        .then((value) {
      //calling weather api
      return FetchForecastWeather()
          .processData(value.latitude, value.longitude,lang);
    });
  }
}
