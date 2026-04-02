import 'word_item.dart';
import 'sentence_item.dart';

class Unit {

  final int number;
  final String title;
  final List<WordItem> words;
  final List<SentenceItem> sentences;

  Unit({
    required this.number,
    required this.title,
    required this.words,
    required this.sentences,
  });

}