
import 'package:cinemapedia/infracstructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infracstructure/repositories/movie_reopsitory_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//repositorio inmutable
final movieRepositoryProvider = Provider((ref){
  return MovieReopsitoryImpl(MoviedbDatasource());
});