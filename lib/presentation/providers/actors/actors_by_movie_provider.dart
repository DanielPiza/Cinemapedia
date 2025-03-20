import 'package:cinemapedia/domain/entities/actor.dart';
import 'actors_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final actorsByMovieProvider = StateNotifierProvider<ActorsByMovieNotifier, Map<String, List<Actor>>>((ref){
  final actorRepository = ref.watch( actorRepositoryProvider );

  return ActorsByMovieNotifier(getActors: actorRepository.getActorsByMovie);
});


/*
  {
    '5460416': Actor[],
    '5561320': Actor[],
    '4165516': Actor[],
  }
*/

typedef GetActorsCallback = Future<List<Actor>>Function(String movieId);

class ActorsByMovieNotifier extends StateNotifier<Map<String,List<Actor>>> {

  final GetActorsCallback getActors;

  ActorsByMovieNotifier({
      required this.getActors
    }): super({});

  Future<void> loadActors( String movieId ) async {
    if ( state[movieId] != null ) return;
    final List<Actor> actors = await getActors( movieId );

    state = { ...state, movieId: actors };
  }
}