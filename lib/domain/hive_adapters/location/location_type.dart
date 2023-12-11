import 'package:hive/hive.dart';

part 'location_type.g.dart';

@HiveType(typeId: 7) // Choose a unique typeId
class Location {
  @HiveField(0)
  String? name;

  @HiveField(1)
  String? region;

  @HiveField(2)
  String? country;

  @HiveField(3)
  double? lat;

  @HiveField(4)
  double? lon;

  @HiveField(5)
  String? tzId;

  @HiveField(6)
  int? localtimeEpoch;

  @HiveField(7)
  String? localtime;

  Location({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });
}
