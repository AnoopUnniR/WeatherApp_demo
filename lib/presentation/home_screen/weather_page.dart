import 'package:flutter/material.dart';
import 'package:weather_app_demo/domain/models/forecast_model/forecast_model.dart';
import 'package:weather_app_demo/presentation/home_screen/widgets/current_weather_widget.dart';
import 'package:weather_app_demo/presentation/home_screen/widgets/header_widget.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key, required this.forecastModel});
  final ForecastModel forecastModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 20,
          ),
          HeaderWidget(
            cityName: forecastModel.location!.name!,
          ),
          // current temperature
          CurrentWeatherWidget(
            forecastModel: forecastModel,
          ),
        ],
      ),
    );
  }
}
