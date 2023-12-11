import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app_demo/core/api/api_key.dart';
import 'package:weather_app_demo/domain/models/forecast_model/forecast_model.dart';

String apiUrlForecastByName(String cityName) {
  return "http://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=$cityName&days=7";
}

String apiUrlForecast(lat, lon) {
  return "http://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=$lat,$lon&days=7";
}

class FetchForecastWeather {
  ForecastModel? forecast;
  Future<(String, ForecastModel?)> processData(lat, lon) async {
    http.Response response;
    try {
      response = await http.get(Uri.parse(apiUrlForecast(lat, lon)));
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

  Future<(String, ForecastModel?)> processDataByName(String cityName) async {
      http.Response response;
    try {
      response = await http.get(Uri.parse(apiUrlForecastByName(cityName)));
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
  
}
