import 'package:hive/hive.dart';
import 'package:weather_app_demo/domain/models/forecast_model/current.dart';
import 'package:weather_app_demo/domain/models/forecast_model/location.dart';
import 'package:weather_app_demo/domain/models/forecast_model/forecast.dart';
part 'forecast_model_type.g.dart';

@HiveType(typeId: 4) // Choose a unique typeId
class ForecastModel {
  @HiveField(0)
  Location? location;

  @HiveField(1)
  Current? current;

  @HiveField(2)
  Forecast? forecast;

  ForecastModel({this.location, this.current, this.forecast});
}
