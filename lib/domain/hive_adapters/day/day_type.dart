import 'package:hive/hive.dart';
import 'package:weather_app_demo/domain/hive_adapters/conditions/condition_type.dart';

part 'day_type.g.dart';



@HiveType(typeId: 2) 
class DayDbModel {
  @HiveField(0)
  double? maxtempC;

  @HiveField(1)
  double? mintempC;

  @HiveField(2)
  ConditionDbModel? condition;

  DayDbModel({
    this.maxtempC, 
    this.mintempC, 
    this.condition, 
  });
}
