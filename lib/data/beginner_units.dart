import '../models/unit.dart';
import '../models/word_item.dart';
import 'package:linguapet/models/sentence_item.dart';

final List<Unit> beginnerUnits = [

  Unit(
    number: 1,
    title: "Basic Greetings",
    words: [
      WordItem(
        tamil: "வணக்கம்",
        english: "Hello",
        transliteration: "Vanakkam",
      ),
      WordItem(
        tamil: "நன்றி",
        english: "Thank you",
        transliteration: "Nandri",
      ),
      WordItem(
        tamil: "ஆம்",
        english: "Yes",
        transliteration: "Aam",
      ),
      WordItem(
        tamil: "இல்லை",
        english: "No",
        transliteration: "Illai",
      ),
    ],
    sentences: [
      SentenceItem(
        tamil: "நீங்கள் எப்படி இருக்கிறீர்கள்?",
        english: "How are you?",
        transliteration: "Neenga eppadi irukeenga?",
      ),
      SentenceItem(
        tamil: "நான் நன்றாக இருக்கிறேன்.",
        english: "I am fine.",
        transliteration: "Naan nandraaga irukkiren.",
      ),
    ],
  ),

];
