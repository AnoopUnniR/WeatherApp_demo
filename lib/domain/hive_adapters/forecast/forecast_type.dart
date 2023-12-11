

import 'package:hive/hive.dart';
import 'package:weather_app_demo/domain/models/forecast_model/forecastday.dart';


part 'forecast_type.g.dart';

@HiveType(typeId: 3) 
class Forecast {

  @HiveField(0)
  List<Forecastday>? forecastday;

  Forecast({
    required this.forecastday
  });
}