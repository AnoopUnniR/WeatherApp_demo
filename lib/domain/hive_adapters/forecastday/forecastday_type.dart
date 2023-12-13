import 'package:hive/hive.dart';
import 'package:weather_app_demo/domain/hive_adapters/hour/hour_type.dart';
import 'package:weather_app_demo/domain/hive_adapters/day/day_type.dart';


part 'forecastday_type.g.dart';

@HiveType(typeId: 5) 
class ForecastdayDbModel {
  @HiveField(0)
  String? date;

  @HiveField(2)
  DayDbModel? day;

  @HiveField(3)
  List<HourDbModel>? hour;

  ForecastdayDbModel({
    this.date,
   this.day,
    this.hour,
  });
}
