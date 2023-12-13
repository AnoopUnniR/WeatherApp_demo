import 'package:hive/hive.dart';
import 'package:weather_app_demo/domain/hive_adapters/conditions/condition_type.dart';

part 'hour_type.g.dart';

@HiveType(typeId: 6) // Choose a unique typeId
class HourDbModel {
  @HiveField(1)
  String? time;
  @HiveField(2)
  double? tempC;
  @HiveField(5)
  ConditionDbModel? condition;


  HourDbModel({
    this.time,
    this.tempC,
    this.condition,
  });
}
