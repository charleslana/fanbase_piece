import 'package:fanbase_piece/src/models/character_model.dart';

class Utils {
  Map<String, CharacterModel> searchFilterCharacters(
      Map<String, CharacterModel> characters, String filter) {
    final Map<String, CharacterModel> filters = {};
    characters.forEach(
      (key, value) => {
        if (value.name.toLowerCase().contains(filter.toLowerCase()))
          {
            filters.putIfAbsent(
              key,
              () => CharacterModel(
                id: int.parse(key),
                name: value.name,
                image: value.image,
                images: value.images,
                rank: value.rank,
                organization: value.organization,
                haki: value.haki,
              ),
            ),
          },
      },
    );
    return filters;
  }
}
