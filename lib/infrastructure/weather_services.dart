import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app_demo/core/api/api_key.dart';
import 'package:weather_app_demo/domain/models/forecast_model/forecast_model.dart';

String apiUrlForecastByName(String cityName, String lang) {
  return "https://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=$cityName&days=5&lang=$lang";
}

String apiUrlForecast(lat, lon, String lang) {
  return "https://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=$lat,$lon&days=5&lang=$lang";
}

class FetchForecastWeather {
  ForecastModel? forecast;
  Future<(String, ForecastModel?)> processData(lat, lon, String lang) async {
    http.Response response;
    try {
      response = await http.get(Uri.parse(apiUrlForecast(lat, lon, lang)));
      final jsonString = jsonDecode(response.body);
      forecast = ForecastModel.fromJson(jsonString);
      if (response.statusCode == 200) {
        return ("", forecast!);
      }
      return (response.body, null);
    } catch (e) {
      return (e.toString(), null);
    }
  }

  Future<(String, ForecastModel?)> processDataByName(
      String cityName, String lang) async {
    http.Response response;
    try {
      response =
          await http.get(Uri.parse(apiUrlForecastByName(cityName, lang)));
      final jsonString = jsonDecode(response.body);
      forecast = ForecastModel.fromJson(jsonString);
      if (response.statusCode == 200) {
        return ("", forecast!);
      }
      return ("Error Occured", null);
    } catch (e) {
      return (e.toString(), null);
    }
  }
}
