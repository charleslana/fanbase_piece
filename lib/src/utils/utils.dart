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
                id: key,
                name: value.name,
                image: value.image,
              ),
            ),
          },
      },
    );
    return filters;
  }
}
