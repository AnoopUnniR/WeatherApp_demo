import 'package:hive/hive.dart';
import 'package:weather_app_demo/domain/hive_adapters/location/location_type.dart';
import 'package:weather_app_demo/domain/hive_adapters/forecast/forecast_type.dart';
import 'package:weather_app_demo/domain/hive_adapters/current/current_type.dart';


part 'forecast_model_type.g.dart';

@HiveType(typeId: 4) // Choose a unique typeId
class ForecastModelDbModel {
  @HiveField(0)
  LocationDbModel? location;

  @HiveField(1)
  CurrentDbModel? current;

  @HiveField(2)
  ForecastDbModel? forecast;

  ForecastModelDbModel({this.location, this.current, this.forecast});
}
