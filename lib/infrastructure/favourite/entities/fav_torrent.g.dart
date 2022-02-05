// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fav_torrent.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TorrentLocalAdapter extends TypeAdapter<TorrentLocal> {
  @override
  final int typeId = 1;

  @override
  TorrentLocal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TorrentLocal(
      url: fields[0] as String,
      hash: fields[1] as String,
      quality: fields[2] as String,
      type: fields[3] as String,
      seeds: fields[4] as int,
      peers: fields[5] as int,
      size: fields[6] as String,
      sizeBytes: fields[7] as int,
      dateUploaded: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TorrentLocal obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.url)
      ..writeByte(1)
      ..write(obj.hash)
      ..writeByte(2)
      ..write(obj.quality)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.seeds)
      ..writeByte(5)
      ..write(obj.peers)
      ..writeByte(6)
      ..write(obj.size)
      ..writeByte(7)
      ..write(obj.sizeBytes)
      ..writeByte(8)
      ..write(obj.dateUploaded);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TorrentLocalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
