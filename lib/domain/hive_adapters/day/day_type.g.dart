// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DayAdapter extends TypeAdapter<Day> {
  @override
  final int typeId = 2;

  @override
  Day read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Day(
      maxtempC: fields[0] as double?,
      maxtempF: fields[1] as double?,
      mintempC: fields[2] as double?,
      mintempF: fields[3] as double?,
      avgtempC: fields[4] as double?,
      avgtempF: fields[5] as double?,
      maxwindMph: fields[6] as double?,
      maxwindKph: fields[7] as double?,
      totalprecipMm: fields[8] as double?,
      totalprecipIn: fields[9] as double?,
      totalsnowCm: fields[10] as double?,
      avgvisKm: fields[11] as double?,
      avgvisMiles: fields[12] as double?,
      avghumidity: fields[13] as double?,
      dailyWillItRain: fields[14] as double?,
      dailyChanceOfRain: fields[15] as double?,
      dailyWillItSnow: fields[16] as double?,
      dailyChanceOfSnow: fields[17] as double?,
      uv: fields[18] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, Day obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.maxtempC)
      ..writeByte(1)
      ..write(obj.maxtempF)
      ..writeByte(2)
      ..write(obj.mintempC)
      ..writeByte(3)
      ..write(obj.mintempF)
      ..writeByte(4)
      ..write(obj.avgtempC)
      ..writeByte(5)
      ..write(obj.avgtempF)
      ..writeByte(6)
      ..write(obj.maxwindMph)
      ..writeByte(7)
      ..write(obj.maxwindKph)
      ..writeByte(8)
      ..write(obj.totalprecipMm)
      ..writeByte(9)
      ..write(obj.totalprecipIn)
      ..writeByte(10)
      ..write(obj.totalsnowCm)
      ..writeByte(11)
      ..write(obj.avgvisKm)
      ..writeByte(12)
      ..write(obj.avgvisMiles)
      ..writeByte(13)
      ..write(obj.avghumidity)
      ..writeByte(14)
      ..write(obj.dailyWillItRain)
      ..writeByte(15)
      ..write(obj.dailyChanceOfRain)
      ..writeByte(16)
      ..write(obj.dailyWillItSnow)
      ..writeByte(17)
      ..write(obj.dailyChanceOfSnow)
      ..writeByte(18)
      ..write(obj.uv);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
