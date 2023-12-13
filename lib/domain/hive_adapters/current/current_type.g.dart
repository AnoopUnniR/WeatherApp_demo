// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CurrentDbModelAdapter extends TypeAdapter<CurrentDbModel> {
  @override
  final int typeId = 1;

  @override
  CurrentDbModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CurrentDbModel(
      tempC: fields[0] as double?,
      condition: fields[1] as ConditionDbModel?,
      windMph: fields[2] as double?,
      windKph: fields[3] as double?,
      humidity: fields[4] as double?,
      cloud: fields[5] as double?,
      feelslikeC: fields[6] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, CurrentDbModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.tempC)
      ..writeByte(1)
      ..write(obj.condition)
      ..writeByte(2)
      ..write(obj.windMph)
      ..writeByte(3)
      ..write(obj.windKph)
      ..writeByte(4)
      ..write(obj.humidity)
      ..writeByte(5)
      ..write(obj.cloud)
      ..writeByte(6)
      ..write(obj.feelslikeC);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrentDbModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
