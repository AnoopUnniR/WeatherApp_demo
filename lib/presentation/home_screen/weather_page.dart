import 'package:flutter/material.dart';
import 'package:weather_app_demo/domain/hive_adapters/forecast_model/forecast_model_type.dart';
import 'package:weather_app_demo/presentation/home_screen/widgets/current_weather_widget.dart';
import 'package:weather_app_demo/presentation/home_screen/widgets/header_widget.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key, required this.forecastModel});
  final ForecastModelDbModel forecastModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          forecastModel.location!.name!,
          style: const TextStyle(fontSize: 30, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.search),
          )
        ],
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
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
