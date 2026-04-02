class Pet {
  final String id;
  final String name;
  final String languageCode;
  final String emoji;

  int level;
  int stars;

  Pet({
    required this.id,
    required this.name,
    required this.languageCode,
    required this.emoji,
    this.level = 1,
    this.stars = 0,
  });
}
