import 'word_item.dart';
import 'sentence_item.dart';

class BeginnerSubsection {
  final String title;
  final String parentSectionTitle; // ✅ CHANGE NAME
  final List<WordItem> words;
  final List<SentenceItem> sentences;

  BeginnerSubsection({
    required this.title,
    required this.parentSectionTitle, // ✅ CHANGE HERE
    required this.words,
    required this.sentences,
  });
}