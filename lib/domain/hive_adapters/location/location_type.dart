import 'package:hive/hive.dart';

part 'location_type.g.dart';

@HiveType(typeId: 7) // Choose a unique typeId
class LocationDbModel {
  @HiveField(0)
  String? name;

  LocationDbModel({
    this.name,

 
  });
}
