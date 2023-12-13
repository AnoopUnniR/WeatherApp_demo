// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocationDbModelAdapter extends TypeAdapter<LocationDbModel> {
  @override
  final int typeId = 7;

  @override
  LocationDbModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocationDbModel(
      name: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LocationDbModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationDbModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
