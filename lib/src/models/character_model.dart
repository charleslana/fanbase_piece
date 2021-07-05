class CharacterModel {
  final int id;
  final String name;
  final String image;
  final List<int> images;
  final String rank;
  final int organization;
  final List<int> haki;

  const CharacterModel({
    required this.id,
    required this.name,
    required this.image,
    required this.images,
    required this.rank,
    required this.organization,
    required this.haki,
  });
}
