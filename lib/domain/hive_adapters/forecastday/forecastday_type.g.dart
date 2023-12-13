// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecastday_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ForecastdayDbModelAdapter extends TypeAdapter<ForecastdayDbModel> {
  @override
  final int typeId = 5;

  @override
  ForecastdayDbModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ForecastdayDbModel(
      date: fields[0] as String?,
      day: fields[2] as DayDbModel?,
      hour: (fields[3] as List?)?.cast<HourDbModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, ForecastdayDbModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.date)
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
      other is ForecastdayDbModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
