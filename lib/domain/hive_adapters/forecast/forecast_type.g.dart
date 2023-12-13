// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ForecastDbModelAdapter extends TypeAdapter<ForecastDbModel> {
  @override
  final int typeId = 3;

  @override
  ForecastDbModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ForecastDbModel(
      forecastday: (fields[0] as List?)?.cast<ForecastdayDbModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, ForecastDbModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.forecastday);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ForecastDbModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
