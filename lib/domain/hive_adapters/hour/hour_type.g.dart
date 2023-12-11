// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hour_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HourAdapter extends TypeAdapter<Hour> {
  @override
  final int typeId = 6;

  @override
  Hour read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Hour(
      timeEpoch: fields[0] as double?,
      time: fields[1] as String?,
      tempC: fields[2] as double?,
      tempF: fields[3] as double?,
      isDay: fields[4] as double?,
      condition: fields[5] as Condition?,
      windMph: fields[6] as double?,
      windKph: fields[7] as double?,
      windDegree: fields[8] as double?,
      windDir: fields[9] as String?,
      pressureMb: fields[10] as double?,
      pressureIn: fields[11] as double?,
      precipMm: fields[12] as double?,
      precipIn: fields[13] as double?,
      humidity: fields[14] as double?,
      cloud: fields[15] as double?,
      feelslikeC: fields[16] as double?,
      feelslikeF: fields[17] as double?,
      windchillC: fields[18] as double?,
      windchillF: fields[19] as double?,
      heatindexC: fields[20] as double?,
      heatindexF: fields[21] as double?,
      dewpointC: fields[22] as double?,
      dewpointF: fields[23] as double?,
      willItRain: fields[24] as double?,
      chanceOfRain: fields[25] as double?,
      willItSnow: fields[26] as double?,
      chanceOfSnow: fields[27] as double?,
      visKm: fields[28] as double?,
      visMiles: fields[29] as double?,
      gustMph: fields[30] as double?,
      gustKph: fields[31] as double?,
      uv: fields[32] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, Hour obj) {
    writer
      ..writeByte(33)
      ..writeByte(0)
      ..write(obj.timeEpoch)
      ..writeByte(1)
      ..write(obj.time)
      ..writeByte(2)
      ..write(obj.tempC)
      ..writeByte(3)
      ..write(obj.tempF)
      ..writeByte(4)
      ..write(obj.isDay)
      ..writeByte(5)
      ..write(obj.condition)
      ..writeByte(6)
      ..write(obj.windMph)
      ..writeByte(7)
      ..write(obj.windKph)
      ..writeByte(8)
      ..write(obj.windDegree)
      ..writeByte(9)
      ..write(obj.windDir)
      ..writeByte(10)
      ..write(obj.pressureMb)
      ..writeByte(11)
      ..write(obj.pressureIn)
      ..writeByte(12)
      ..write(obj.precipMm)
      ..writeByte(13)
      ..write(obj.precipIn)
      ..writeByte(14)
      ..write(obj.humidity)
      ..writeByte(15)
      ..write(obj.cloud)
      ..writeByte(16)
      ..write(obj.feelslikeC)
      ..writeByte(17)
      ..write(obj.feelslikeF)
      ..writeByte(18)
      ..write(obj.windchillC)
      ..writeByte(19)
      ..write(obj.windchillF)
      ..writeByte(20)
      ..write(obj.heatindexC)
      ..writeByte(21)
      ..write(obj.heatindexF)
      ..writeByte(22)
      ..write(obj.dewpointC)
      ..writeByte(23)
      ..write(obj.dewpointF)
      ..writeByte(24)
      ..write(obj.willItRain)
      ..writeByte(25)
      ..write(obj.chanceOfRain)
      ..writeByte(26)
      ..write(obj.willItSnow)
      ..writeByte(27)
      ..write(obj.chanceOfSnow)
      ..writeByte(28)
      ..write(obj.visKm)
      ..writeByte(29)
      ..write(obj.visMiles)
      ..writeByte(30)
      ..write(obj.gustMph)
      ..writeByte(31)
      ..write(obj.gustKph)
      ..writeByte(32)
      ..write(obj.uv);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HourAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
