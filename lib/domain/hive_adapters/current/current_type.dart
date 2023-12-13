import 'package:hive/hive.dart';
import 'package:weather_app_demo/domain/hive_adapters/conditions/condition_type.dart';


part 'current_type.g.dart';


@HiveType(typeId: 1)
class CurrentDbModel {
  @HiveField(0)
  double? tempC;

  @HiveField(1)
  ConditionDbModel? condition;

  @HiveField(2)
  double? windMph;

  @HiveField(3)
  double? windKph;

  @HiveField(4)
  double? humidity;

  @HiveField(5)
  double? cloud;

  @HiveField(6)
  double? feelslikeC;

  CurrentDbModel({
    this.tempC,
    this.condition,
    this.windMph,
    this.windKph,
    this.humidity,
    this.cloud,
    this.feelslikeC,
  });
}
