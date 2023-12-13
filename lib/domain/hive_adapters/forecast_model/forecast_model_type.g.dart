// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_model_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ForecastModelDbModelAdapter extends TypeAdapter<ForecastModelDbModel> {
  @override
  final int typeId = 4;

  @override
  ForecastModelDbModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ForecastModelDbModel(
      location: fields[0] as LocationDbModel?,
      current: fields[1] as CurrentDbModel?,
      forecast: fields[2] as ForecastDbModel?,
    );
  }

  @override
  void write(BinaryWriter writer, ForecastModelDbModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.location)
      ..writeByte(1)
      ..write(obj.current)
      ..writeByte(2)
      ..write(obj.forecast);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ForecastModelDbModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
