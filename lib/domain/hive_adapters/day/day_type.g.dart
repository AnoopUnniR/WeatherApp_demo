// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DayDbModelAdapter extends TypeAdapter<DayDbModel> {
  @override
  final int typeId = 2;

  @override
  DayDbModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DayDbModel(
      maxtempC: fields[0] as double?,
      mintempC: fields[1] as double?,
      condition: fields[2] as ConditionDbModel?,
    );
  }

  @override
  void write(BinaryWriter writer, DayDbModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.maxtempC)
      ..writeByte(1)
      ..write(obj.mintempC)
      ..writeByte(2)
      ..write(obj.condition);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DayDbModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
