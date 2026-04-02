class WordItem {
  final String tamil;
  final String english;
  final String transliteration;

  int correctCount;
  int wrongCount;
  double difficultyScore;

  WordItem({
    required this.tamil,
    required this.english,
    required this.transliteration,
    this.correctCount = 0,
    this.wrongCount = 0,
    this.difficultyScore = 0.0,
  });

  void updateDifficulty() {
    difficultyScore = wrongCount / (correctCount + 1);
  }

  void markCorrect() {
    correctCount++;
    updateDifficulty();
  }

  void markWrong() {
    wrongCount++;
    updateDifficulty();
  }
}
