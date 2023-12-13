

import 'package:hive/hive.dart';
import 'package:weather_app_demo/domain/hive_adapters/forecastday/forecastday_type.dart';


part 'forecast_type.g.dart';

@HiveType(typeId: 3) 
class ForecastDbModel {

  @HiveField(0)
  List<ForecastdayDbModel>? forecastday;

  ForecastDbModel({
    required this.forecastday
  });
}