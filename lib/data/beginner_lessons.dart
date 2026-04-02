class Unit {
  final String title;
  final int completed;
  final int total;
  final String emoji;

  Unit({
    required this.title,
    required this.completed,
    required this.total,
    required this.emoji,
  });
}

final List<Unit> beginnerUnits = [
  Unit(title: 'Introduction', completed: 3, total: 5, emoji: '👋'),
  Unit(title: 'Basic Sentences', completed: 2, total: 6, emoji: '🗣️'),
  Unit(title: 'Greetings', completed: 4, total: 5, emoji: '😊'),
  Unit(title: 'Numbers & Counting', completed: 1, total: 5, emoji: '🔢'),
  Unit(title: 'Family', completed: 0, total: 6, emoji: '👨‍👩‍👧‍👦'),
  Unit(title: 'Food & Tastes', completed: 0, total: 6, emoji: '🍲'),
  Unit(title: 'Activities', completed: 0, total: 5, emoji: '🏃'),
  Unit(title: 'Places', completed: 0, total: 5, emoji: '📍'),
  Unit(title: 'Time & Date', completed: 0, total: 5, emoji: '⏰'),
  Unit(title: 'Review + Mini Dialog', completed: 0, total: 4, emoji: '🔁'),
];
