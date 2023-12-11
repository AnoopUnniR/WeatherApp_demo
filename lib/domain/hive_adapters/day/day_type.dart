import 'package:hive/hive.dart';
part 'day_type.g.dart';

@HiveType(typeId: 2) 
class Day {
  @HiveField(0)
  double? maxtempC;

  @HiveField(1)
  double? maxtempF;

  @HiveField(2)
  double? mintempC;

  @HiveField(3)
  double? mintempF;

  @HiveField(4)
  double? avgtempC;

  @HiveField(5)
  double? avgtempF;

  @HiveField(6)
  double? maxwindMph;

  @HiveField(7)
  double? maxwindKph;

  @HiveField(8)
  double? totalprecipMm;

  @HiveField(9)
  double? totalprecipIn;

  @HiveField(10)
  double? totalsnowCm;

  @HiveField(11)
  double? avgvisKm;

  @HiveField(12)
  double? avgvisMiles;

  @HiveField(13)
  double? avghumidity;

  @HiveField(14)
  double? dailyWillItRain;

  @HiveField(15)
  double? dailyChanceOfRain;

  @HiveField(16)
  double? dailyWillItSnow;

  @HiveField(17)
  double? dailyChanceOfSnow;

  @HiveField(18)

  @HiveField(19)
  double? uv;

  Day({
    this.maxtempC,
    this.maxtempF,
    this.mintempC,
    this.mintempF,
    this.avgtempC,
    this.avgtempF,
    this.maxwindMph,
    this.maxwindKph,
    this.totalprecipMm,
    this.totalprecipIn,
    this.totalsnowCm,
    this.avgvisKm,
    this.avgvisMiles,
    this.avghumidity,
    this.dailyWillItRain,
    this.dailyChanceOfRain,
    this.dailyWillItSnow,
    this.dailyChanceOfSnow,
    this.uv,
  });
}
