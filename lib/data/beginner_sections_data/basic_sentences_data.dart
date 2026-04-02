import '../../models/beginner_subsection.dart';
import '../../models/word_item.dart';
import '../../models/sentence_item.dart';
import '../../models/beginner_section.dart';


BeginnerSection basicSentencesSection = BeginnerSection(
  title: "Basic Sentences",
  subsections: [

    // 🔹 IDENTITY & SIMPLE STATEMENTS
    BeginnerSubsection(
      parentSectionTitle: "Basic Sentences",
      title: "Identity & Introduction",
      words: [
        WordItem(tamil: "மாணவன்", english: "Student (male)", transliteration: "Maanavan"),
        WordItem(tamil: "மாணவி", english: "Student (female)", transliteration: "Maanavi"),
        WordItem(tamil: "ஆசிரியர்", english: "Teacher", transliteration: "Aasiriyar"),
        WordItem(tamil: "வேலை", english: "Work", transliteration: "Velai"),
      ],
      sentences: [
        SentenceItem(
          tamil: "நான் மாணவன்.",
          english: "I am a student.",
          transliteration: "Naan maanavan.",
        ),
        SentenceItem(
          tamil: "நான் ஆசிரியர்.",
          english: "I am a teacher.",
          transliteration: "Naan aasiriyar.",
        ),
        SentenceItem(
          tamil: "அவர் மருத்துவர்.",
          english: "He is a doctor.",
          transliteration: "Avar maruththuvvar.",
        ),
      ],
    ),

    // 🔹 PRESENT CONTINUOUS
    BeginnerSubsection(
      parentSectionTitle: "Basic Sentences",
      title: "Present Continuous",
      words: [
        WordItem(tamil: "கற்கிறேன்", english: "Am learning", transliteration: "Karkkiren"),
        WordItem(tamil: "செல்கிறேன்", english: "Am going", transliteration: "Selgiren"),
        WordItem(tamil: "படிக்கிறேன்", english: "Am studying", transliteration: "Padikkiren"),
        WordItem(tamil: "சாப்பிடுகிறேன்", english: "Am eating", transliteration: "Saappidugiren"),
      ],
      sentences: [
        SentenceItem(
          tamil: "நான் தமிழ் கற்கிறேன்.",
          english: "I am learning Tamil.",
          transliteration: "Naan Tamil karkkiren.",
        ),
        SentenceItem(
          tamil: "நான் பள்ளிக்கு செல்கிறேன்.",
          english: "I am going to school.",
          transliteration: "Naan pallikku selgiren.",
        ),
        SentenceItem(
          tamil: "நான் சாப்பிடுகிறேன்.",
          english: "I am eating.",
          transliteration: "Naan saappidugiren.",
        ),
      ],
    ),

    // 🔹 PAST TENSE
    BeginnerSubsection(
      parentSectionTitle: "Basic Sentences",
      title: "Past Tense",
      words: [
        WordItem(tamil: "சென்றேன்", english: "Went", transliteration: "Sendren"),
        WordItem(tamil: "சாப்பிட்டேன்", english: "Ate", transliteration: "Saappitten"),
        WordItem(tamil: "பேசினேன்", english: "Spoke", transliteration: "Pesinen"),
      ],
      sentences: [
        SentenceItem(
          tamil: "நான் நேற்று பள்ளிக்கு சென்றேன்.",
          english: "I went to school yesterday.",
          transliteration: "Naan netru pallikku sendren.",
        ),
        SentenceItem(
          tamil: "நான் சாப்பிட்டேன்.",
          english: "I ate.",
          transliteration: "Naan saappitten.",
        ),
      ],
    ),

    // 🔹 FUTURE TENSE
    BeginnerSubsection(
      parentSectionTitle: "Basic Sentences",
      title: "Future Tense",
      words: [
        WordItem(tamil: "செல்வேன்", english: "Will go", transliteration: "Selven"),
        WordItem(tamil: "சாப்பிடுவேன்", english: "Will eat", transliteration: "Saappidduven"),
        WordItem(tamil: "பேசுவேன்", english: "Will speak", transliteration: "Pesuven"),
      ],
      sentences: [
        SentenceItem(
          tamil: "நான் நாளை பள்ளிக்கு செல்வேன்.",
          english: "I will go to school tomorrow.",
          transliteration: "Naan naalai pallikku selven.",
        ),
        SentenceItem(
          tamil: "நான் பிறகு பேசுவேன்.",
          english: "I will speak later.",
          transliteration: "Naan piragu pesuven.",
        ),
      ],
    ),

    // 🔹 QUESTIONS
    BeginnerSubsection(
      parentSectionTitle: "Basic Sentences",
      title: "Questions",
      words: [],
      sentences: [
        SentenceItem(
          tamil: "நீங்கள் என்ன செய்கிறீர்கள்?",
          english: "What are you doing?",
          transliteration: "Neengal enna seigireergal?",
        ),
        SentenceItem(
          tamil: "நீங்கள் எங்கே செல்கிறீர்கள்?",
          english: "Where are you going?",
          transliteration: "Neengal enge selgireergal?",
        ),
        SentenceItem(
          tamil: "நீங்கள் சாப்பிட்டீர்களா?",
          english: "Did you eat?",
          transliteration: "Neengal saappitteergalaa?",
        ),
      ],
    ),

    // 🔹 NEGATIVE SENTENCES
    BeginnerSubsection(
      parentSectionTitle: "Basic Sentences",
      title: "Negative Sentences",
      words: [
        WordItem(tamil: "இல்லை", english: "Not / No", transliteration: "Illai"),
      ],
      sentences: [
        SentenceItem(
          tamil: "நான் செல்லவில்லை.",
          english: "I did not go.",
          transliteration: "Naan sellavillai.",
        ),
        SentenceItem(
          tamil: "நான் சாப்பிடவில்லை.",
          english: "I did not eat.",
          transliteration: "Naan saappidavillai.",
        ),
      ],
    ),

  ],
);
