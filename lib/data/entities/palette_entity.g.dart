// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'palette_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PaletteEntityAdapter extends TypeAdapter<PaletteEntity> {
  @override
  final int typeId = 1;

  @override
  PaletteEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PaletteEntity(
      textColorValue: fields[0] as int,
      backgroundColorValue: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, PaletteEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.textColorValue)
      ..writeByte(1)
      ..write(obj.backgroundColorValue);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaletteEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
