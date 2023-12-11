// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecastday_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ForecastdayAdapter extends TypeAdapter<Forecastday> {
  @override
  final int typeId = 5;

  @override
  Forecastday read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Forecastday(
      date: fields[0] as String?,
      dateEpoch: fields[1] as int?,
      day: fields[2] as Day?,
      hour: (fields[3] as List?)?.cast<Hour>(),
    );
  }

  @override
  void write(BinaryWriter writer, Forecastday obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.dateEpoch)
      ..writeByte(2)
      ..write(obj.day)
      ..writeByte(3)
      ..write(obj.hour);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ForecastdayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
