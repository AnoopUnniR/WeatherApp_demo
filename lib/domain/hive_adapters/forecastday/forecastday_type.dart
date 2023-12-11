import 'package:hive/hive.dart';
import 'package:weather_app_demo/domain/models/forecast_model/hour.dart';
import 'package:weather_app_demo/domain/models/forecast_model/day.dart';


part 'forecastday_type.g.dart';

@HiveType(typeId: 5) // Choose a unique typeId
class Forecastday {
  @HiveField(0)
  String? date;

  @HiveField(1)
  int? dateEpoch;

  @HiveField(2)
  Day? day;

  @HiveField(3)
  List<Hour>? hour;

  Forecastday({
    this.date,
    this.dateEpoch,
    this.day,
    this.hour,
  });
}
