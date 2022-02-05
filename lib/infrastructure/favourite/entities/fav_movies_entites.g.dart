// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fav_movies_entites.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavMoviesAdapter extends TypeAdapter<FavMovies> {
  @override
  final int typeId = 0;

  @override
  FavMovies read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavMovies(
      id: fields[0] as num,
      title: fields[1] as String,
      posterBackground: fields[2] as String,
      poster: fields[3] as String,
      ytcode: fields[4] as String,
      genres: (fields[5] as List).cast<String>(),
      description: fields[6] as String,
      rating: fields[7] as num,
      imdbcode: fields[8] as String,
      torrents: (fields[9] as List).cast<TorrentLocal>(),
      largeCoverImage: fields[10] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FavMovies obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.posterBackground)
      ..writeByte(3)
      ..write(obj.poster)
      ..writeByte(4)
      ..write(obj.ytcode)
      ..writeByte(5)
      ..write(obj.genres)
      ..writeByte(6)
      ..write(obj.description)
      ..writeByte(7)
      ..write(obj.rating)
      ..writeByte(8)
      ..write(obj.imdbcode)
      ..writeByte(9)
      ..write(obj.torrents)
      ..writeByte(10)
      ..write(obj.largeCoverImage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavMoviesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
