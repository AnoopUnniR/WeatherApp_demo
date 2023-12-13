// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hour_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HourDbModelAdapter extends TypeAdapter<HourDbModel> {
  @override
  final int typeId = 6;

  @override
  HourDbModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HourDbModel(
      time: fields[1] as String?,
      tempC: fields[2] as double?,
      condition: fields[5] as ConditionDbModel?,
    );
  }

  @override
  void write(BinaryWriter writer, HourDbModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.time)
      ..writeByte(2)
      ..write(obj.tempC)
      ..writeByte(5)
      ..write(obj.condition);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HourDbModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
