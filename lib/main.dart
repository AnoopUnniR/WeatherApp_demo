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
  if (!Hive.isAdapterRegistered(ConditionDbModelAdapter().typeId)) {
    Hive.registerAdapter(ConditionDbModelAdapter());
  }
  if (!Hive.isAdapterRegistered(CurrentDbModelAdapter().typeId)) {
    Hive.registerAdapter(CurrentDbModelAdapter());
  }
  if (!Hive.isAdapterRegistered(DayDbModelAdapter().typeId)) {
    Hive.registerAdapter(DayDbModelAdapter());
  }
  if (!Hive.isAdapterRegistered(ForecastDbModelAdapter().typeId)) {
    Hive.registerAdapter(ForecastDbModelAdapter());
  }
  if (!Hive.isAdapterRegistered(ForecastModelDbModelAdapter().typeId)) {
    Hive.registerAdapter(ForecastModelDbModelAdapter());
  }
  if (!Hive.isAdapterRegistered(ForecastdayDbModelAdapter().typeId)) {
    Hive.registerAdapter(ForecastdayDbModelAdapter());
  }
  if (!Hive.isAdapterRegistered(HourDbModelAdapter().typeId)) {
    Hive.registerAdapter(HourDbModelAdapter());
  }
  if (!Hive.isAdapterRegistered(LocationDbModelAdapter().typeId)) {
    Hive.registerAdapter(LocationDbModelAdapter());
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
          debugShowCheckedModeBanner: false,
          home: Scaffold(body: SplashScreen()),
        ),
      );
  }
}
