import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:yts_bloc_2021/app_setup/hive/hive_box.dart';
import 'package:yts_bloc_2021/infrastructure/favourite/entities/fav_movies_entites.dart';

abstract class IFavouriteMovies {
  Future<Either<Unit, String>> saveMovie({required FavMovies favMovies});

  Future<Either<List<FavMovies>, String>> getMovies();

  Future<bool> isMovieSaved({required num movieId});

  Future<Either<Unit, String>> delete({required num movieId});

  Future<Either<Unit, String>> deleteAll();
}

class FavouriteMoviesRepository extends IFavouriteMovies {
  @override
  Future<Either<Unit, String>> saveMovie({
    required FavMovies favMovies,
  }) async {
    try {
      final favMovie = await Hive.openBox<FavMovies>(HiveBox.moviesBox);
      await favMovie.put(favMovies.id, favMovies);
      return const Left(unit);
    } catch (e) {
      return Right(e.toString());
    }
  }

  @override
  Future<Either<List<FavMovies>, String>> getMovies() async {
    try {
      final favMovie = await Hive.openBox<FavMovies>(HiveBox.moviesBox);
      List<FavMovies> favMoviesList = favMovie.values.toList();
      return Left(favMoviesList);
    } catch (e) {
      return Right(e.toString());
    }
  }

  @override
  Future<bool> isMovieSaved({required num movieId}) async {
    final favMovie = await Hive.openBox<FavMovies>(HiveBox.moviesBox);
    return favMovie.containsKey(movieId);
  }

  @override
  Future<Either<Unit, String>> delete({required num movieId}) async {
    try {
      final favMovie = await Hive.openBox<FavMovies>(HiveBox.moviesBox);
      await favMovie.delete(movieId);
      return const Left(unit);
    } catch (e) {
      return Right(e.toString());
    }
  }

  @override
  Future<Either<Unit, String>> deleteAll() async {
    try {
      for (final box in HiveBox.hiveBoxes) {
        await Hive.deleteBoxFromDisk(box);
      }
      return const Left(unit);
    } catch (e) {
      return Right(e.toString());
    }
  }
}
