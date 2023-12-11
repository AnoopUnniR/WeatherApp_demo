import 'package:hive/hive.dart';

part 'condition_type.g.dart';

@HiveType(typeId: 0) 
class Condition {
  @HiveField(0)
  String? text;

  @HiveField(1)
  String? icon;

  @HiveField(2)
  int? code;

  Condition({this.text, this.icon, this.code});
}