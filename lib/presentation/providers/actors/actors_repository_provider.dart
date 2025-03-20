//repositorio inmutable
import 'package:cinemapedia/infracstructure/datasources/actor_moviedb_datasource.dart';
import 'package:cinemapedia/infracstructure/repositories/actor_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final actorRepositoryProvider = Provider((ref){
  return ActorRepositoryImpl(ActorMoviedbDatasource());
});