import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infracstructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static Actor castToEntity( Cast cast ) => 
    Actor(
      id: cast.id, 
      name: cast.name, 
      profilePath: cast.profilePath != null
        ? 'https://image.tmdb.org/t/p/w500${cast.profilePath}'
        : 'https://sudaneseonline.com/db/avatars/no-profile-picture-icon-no-photo.jpg', 
      character: cast.character
    );
}