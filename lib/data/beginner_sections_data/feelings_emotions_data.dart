import '../../models/beginner_section.dart';
import '../../models/beginner_subsection.dart';
import '../../models/word_item.dart';
import '../../models/sentence_item.dart';

BeginnerSection feelingsEmotionsSection = BeginnerSection(
  title: "Feelings & Emotions",
  subsections: [

    // 🔹 BASIC EMOTIONS
    BeginnerSubsection(
      parentSectionTitle: "Feelings & Emotions",
      title: "Basic Emotions",
      words: [

        WordItem(tamil: "மகிழ்ச்சி", english: "Happiness", transliteration: "Magizhchi"),
        WordItem(tamil: "சோகம்", english: "Sadness", transliteration: "Sogam"),
        WordItem(tamil: "கோபம்", english: "Anger", transliteration: "Kobam"),
        WordItem(tamil: "பயம்", english: "Fear", transliteration: "Bayam"),
        WordItem(tamil: "ஆச்சரியம்", english: "Surprise", transliteration: "Aachariyam"),
        WordItem(tamil: "அன்பு", english: "Love", transliteration: "Anbu"),
        WordItem(tamil: "வெட்கம்", english: "Shyness", transliteration: "Vetkam"),
        WordItem(tamil: "வெறுப்பு", english: "Hate", transliteration: "Veruppu"),
        WordItem(tamil: "பொறாமை", english: "Envy", transliteration: "Poramai"),
        WordItem(tamil: "குற்ற உணர்வு", english: "Guilt", transliteration: "Kutra unarvu"),
        WordItem(tamil: "பெருமை", english: "Pride", transliteration: "Perumai"),
        WordItem(tamil: "உற்சாகம்", english: "Excitement", transliteration: "Urchagam"),
        WordItem(tamil: "அமைதி", english: "Peace", transliteration: "Amaithi"),
        WordItem(tamil: "நம்பிக்கை", english: "Hope", transliteration: "Nambikkai"),
        WordItem(tamil: "நன்றி உணர்வு", english: "Gratitude", transliteration: "Nandri unarvu"),

      ],
      sentences: [],
    ),

    // 🔹 ACTION EXPRESSIONS
    BeginnerSubsection(
      parentSectionTitle: "Feelings & Emotions",
      title: "Emotional Actions",
      words: [

        WordItem(tamil: "சிரி", english: "Smile", transliteration: "Siri"),
        WordItem(tamil: "அழு", english: "Cry", transliteration: "Azhudhal"),
        WordItem(tamil: "சிரிக்க", english: "Laugh", transliteration: "Sirikka"),
        WordItem(tamil: "மகிழ்ச்சி அடை", english: "Feel happy", transliteration: "Magizhchi adai"),
        WordItem(tamil: "வருந்து", english: "Feel sad", transliteration: "Varundhu"),
        WordItem(tamil: "கோபப்படு", english: "Get angry", transliteration: "Kobappadu"),
        WordItem(tamil: "அதிர்ச்சி அடை", english: "Get surprised", transliteration: "Athirchi adai"),
        WordItem(tamil: "அழுத்தம் உணர்", english: "Feel overwhelmed", transliteration: "Azhutham unar"),
        WordItem(tamil: "மகிழ்ந்து கொள்", english: "Enjoy", transliteration: "Magizhndhu kol"),
        WordItem(tamil: "வேடிக்கை செய்", english: "Have fun", transliteration: "Vedikkai sei"),

      ],
      sentences: [],
    ),

    // 🔹 QUIZ SECTION
    BeginnerSubsection(
      parentSectionTitle: "Feelings & Emotions",
      title: "Emotion Quiz",
      words: [],
      sentences: [

        SentenceItem(
          tamil: "Love = ?",
          english: "Translate to Tamil",
          transliteration: "Anbu",
        ),

        SentenceItem(
          tamil: "சோகம் = ?",
          english: "Translate to English",
          transliteration: "Sadness",
        ),

        SentenceItem(
          tamil: "Smile = ?",
          english: "Translate to Tamil",
          transliteration: "Siri",
        ),

        SentenceItem(
          tamil: "பொறாமை = ?",
          english: "Translate to English",
          transliteration: "Envy",
        ),

      ],
    ),

    // 🔹 INTEGRATED SENTENCES
    BeginnerSubsection(
      parentSectionTitle: "Feelings & Emotions",
      title: "Practice Sentences",
      words: [],
      sentences: [

        SentenceItem(
          tamil: "நான் இன்று மிகவும் மகிழ்ச்சியாக இருக்கிறேன்.",
          english: "I am very happy today.",
          transliteration: "Naan indru migavum magizhchiyaga irukkiren.",
        ),

        SentenceItem(
          tamil: "என் சகோதரி சிரிக்கிறாள்.",
          english: "My sister is smiling.",
          transliteration: "En sagodhari sirikkiraal.",
        ),

        SentenceItem(
          tamil: "அவன் கோபமாக இருக்கிறான்.",
          english: "He is angry.",
          transliteration: "Avan kobamaaga irukkiraan.",
        ),

        SentenceItem(
          tamil: "நான் இரண்டு மாம்பழம் சாப்பிட்டு மகிழ்ச்சி அடைகிறேன்.",
          english: "I feel happy eating two mangoes.",
          transliteration: "Naan irandu maampazham saappittu magizhchi adaigiren.",
        ),

        SentenceItem(
          tamil: "என் அம்மா சோகம் அடைந்தார்.",
          english: "My mother felt sad.",
          transliteration: "En amma sogam adaindhaar.",
        ),

        SentenceItem(
          tamil: "அவர்கள் வெட்கமாக சிரித்தார்கள்.",
          english: "They laughed shyly.",
          transliteration: "Avargal vetkamaaga sirithargal.",
        ),

        SentenceItem(
          tamil: "நான் வேலைக்கு செல்லும்போது அழுத்தம் உணர்கிறேன்.",
          english: "I feel overwhelmed when I go to work.",
          transliteration: "Naan velaikku sellumbodhu azhutham unargiren.",
        ),

        SentenceItem(
          tamil: "என் அப்பா பெருமை அடைகிறார்.",
          english: "My father feels proud.",
          transliteration: "En appa perumai adaigiraar.",
        ),

        SentenceItem(
          tamil: "நாம் குடும்பமாக சேர்ந்து மகிழ்ந்து கொள்கிறோம்.",
          english: "We enjoy together as a family.",
          transliteration: "Naam kudumbamaaga serndhu magizhndhu kolgiroam.",
        ),

        SentenceItem(
          tamil: "அவள் ஆச்சரியமாக பார்த்தாள்.",
          english: "She looked surprised.",
          transliteration: "Aval aachariyamaaga paarthaal.",
        ),

      ],
    ),

  ],
);
