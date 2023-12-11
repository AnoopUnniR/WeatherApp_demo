import 'package:hive/hive.dart';
import 'package:weather_app_demo/domain/models/forecast_model/condition.dart';

part 'hour_type.g.dart';

@HiveType(typeId: 6) // Choose a unique typeId
class Hour {
  @HiveField(0)
  double? timeEpoch;

  @HiveField(1)
  String? time;

  @HiveField(2)
  double? tempC;

  @HiveField(3)
  double? tempF;

  @HiveField(4)
  double? isDay;

  @HiveField(5)
  Condition? condition;

  @HiveField(6)
  double? windMph;

  @HiveField(7)
  double? windKph;

  @HiveField(8)
  double? windDegree;

  @HiveField(9)
  String? windDir;

  @HiveField(10)
  double? pressureMb;

  @HiveField(11)
  double? pressureIn;

  @HiveField(12)
  double? precipMm;

  @HiveField(13)
  double? precipIn;

  @HiveField(14)
  double? humidity;

  @HiveField(15)
  double? cloud;

  @HiveField(16)
  double? feelslikeC;

  @HiveField(17)
  double? feelslikeF;

  @HiveField(18)
  double? windchillC;

  @HiveField(19)
  double? windchillF;

  @HiveField(20)
  double? heatindexC;

  @HiveField(21)
  double? heatindexF;

  @HiveField(22)
  double? dewpointC;

  @HiveField(23)
  double? dewpointF;

  @HiveField(24)
  double? willItRain;

  @HiveField(25)
  double? chanceOfRain;

  @HiveField(26)
  double? willItSnow;

  @HiveField(27)
  double? chanceOfSnow;

  @HiveField(28)
  double? visKm;

  @HiveField(29)
  double? visMiles;

  @HiveField(30)
  double? gustMph;

  @HiveField(31)
  double? gustKph;

  @HiveField(32)
  double? uv;

  Hour({
    this.timeEpoch,
    this.time,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.windchillC,
    this.windchillF,
    this.heatindexC,
    this.heatindexF,
    this.dewpointC,
    this.dewpointF,
    this.willItRain,
    this.chanceOfRain,
    this.willItSnow,
    this.chanceOfSnow,
    this.visKm,
    this.visMiles,
    this.gustMph,
    this.gustKph,
    this.uv,
  });
}
