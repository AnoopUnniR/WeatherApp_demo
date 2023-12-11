import 'package:hive/hive.dart';

part 'current_type.g.dart';

@HiveType(typeId: 1) // Choose a unique typeId
class Current {
  @HiveField(0)
  int? lastUpdatedEpoch;

  @HiveField(1)
  String? lastUpdated;

  @HiveField(2)
  double? tempC;

  @HiveField(3)
  double? tempF;

  @HiveField(4)
  int? isDay;

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
  double? visKm;

  @HiveField(19)
  double? visMiles;

  @HiveField(20)
  double? uv;

  @HiveField(21)
  double? gustMph;

  @HiveField(22)
  double? gustKph;

  Current({
    this.lastUpdatedEpoch,
    this.lastUpdated,
    this.tempC,
    this.tempF,
    this.isDay,
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
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
  });
}
