import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_demo/applications/splash_screen/splash_screen_bloc.dart';
import 'package:weather_app_demo/applications/weather_page/weather_screen_bloc.dart';
import 'package:weather_app_demo/domain/hive_adapters/conditions/condition_type.dart';
import 'package:weather_app_demo/domain/hive_adapters/current/current_type.dart';
import 'package:weather_app_demo/domain/hive_adapters/day/day_type.dart';
import 'package:weather_app_demo/domain/hive_adapters/forecast/forecast_type.dart';
import 'package:weather_app_demo/domain/hive_adapters/forecast_model/forecast_model_type.dart';
import 'package:weather_app_demo/domain/hive_adapters/forecastday/forecastday_type.dart';
import 'package:weather_app_demo/domain/hive_adapters/hour/hour_type.dart';
import 'package:weather_app_demo/domain/hive_adapters/location/location_type.dart';
import 'package:weather_app_demo/presentation/splash_screen/splash_scree.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(ConditionAdapter().typeId)) {
    Hive.registerAdapter(ConditionAdapter());
  }
  if (!Hive.isAdapterRegistered(CurrentAdapter().typeId)) {
    Hive.registerAdapter(CurrentAdapter());
  }
  if (!Hive.isAdapterRegistered(DayAdapter().typeId)) {
    Hive.registerAdapter(DayAdapter());
  }
  if (!Hive.isAdapterRegistered(ForecastAdapter().typeId)) {
    Hive.registerAdapter(ForecastAdapter());
  }
  if (!Hive.isAdapterRegistered(ForecastModelAdapter().typeId)) {
    Hive.registerAdapter(ForecastModelAdapter());
  }
  if (!Hive.isAdapterRegistered(ForecastdayAdapter().typeId)) {
    Hive.registerAdapter(ForecastdayAdapter());
  }
  if (!Hive.isAdapterRegistered(HourAdapter().typeId)) {
    Hive.registerAdapter(HourAdapter());
  }
  if (!Hive.isAdapterRegistered(LocationAdapter().typeId)) {
    Hive.registerAdapter(LocationAdapter());
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SplashScreenBloc()
              ..add(
                SplashEvent(),
              ),
          ),
          BlocProvider(
            create: (context) => WeatherScreenBloc(),
          ),
        ],
        child: const MaterialApp(
          home: Scaffold(body: SplashScreen()),
        ));
  }
}
