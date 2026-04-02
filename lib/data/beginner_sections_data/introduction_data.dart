import '../../models/beginner_subsection.dart';
import '../../models/word_item.dart';
import '../../models/sentence_item.dart';
import '../../models/beginner_section.dart';


BeginnerSection introductionSection = BeginnerSection(
  title: "Introduction",
  subsections: [

    // 🔹 GREETINGS
    BeginnerSubsection(
      parentSectionTitle: "Introduction",
      title: "Greetings",
      words: [
        WordItem(tamil: "வணக்கம்", english: "Hello", transliteration: "Vanakkam"),
        WordItem(tamil: "காலை வணக்கம்", english: "Good Morning", transliteration: "Kaalai Vanakkam"),
        WordItem(tamil: "மாலை வணக்கம்", english: "Good Evening", transliteration: "Maalai Vanakkam"),
        WordItem(tamil: "இரவு வணக்கம்", english: "Good Night", transliteration: "Iravu Vanakkam"),
        WordItem(tamil: "நன்றி", english: "Thank you", transliteration: "Nandri"),
        WordItem(tamil: "மிக்க நன்றி", english: "Thank you very much", transliteration: "Mikka Nandri"),
        WordItem(tamil: "ஆம்", english: "Yes", transliteration: "Aam"),
        WordItem(tamil: "இல்லை", english: "No", transliteration: "Illai"),
        WordItem(tamil: "விடைபெறுகிறேன்", english: "Goodbye", transliteration: "Vidaiperugiren"),
      ],
      sentences: [
        SentenceItem(
          tamil: "நீங்கள் எப்படி இருக்கிறீர்கள்?",
          english: "How are you?",
          transliteration: "Neengal eppadi irukkireergal?",
        ),
        SentenceItem(
          tamil: "நான் நன்றாக இருக்கிறேன்.",
          english: "I am fine.",
          transliteration: "Naan nandraga irukkiren.",
        ),
        SentenceItem(
          tamil: "உங்களை சந்தித்ததில் மகிழ்ச்சி.",
          english: "Nice to meet you.",
          transliteration: "Ungalai sandhithadhil magizhchi.",
        ),
      ],
    ),

    // 🔹 QUESTION WORDS
    BeginnerSubsection(
      parentSectionTitle: "Introduction",
      title: "Question Words",
      words: [
        WordItem(tamil: "என்ன", english: "What", transliteration: "Enna"),
        WordItem(tamil: "யார்", english: "Who", transliteration: "Yaar"),
        WordItem(tamil: "எப்போது", english: "When", transliteration: "Eppozhuthu"),
        WordItem(tamil: "எங்கே", english: "Where", transliteration: "Enge"),
        WordItem(tamil: "ஏன்", english: "Why", transliteration: "Yen"),
        WordItem(tamil: "எப்படி", english: "How", transliteration: "Eppadi"),
      ],
      sentences: [
        SentenceItem(
          tamil: "உங்கள் பெயர் என்ன?",
          english: "What is your name?",
          transliteration: "Ungal peyar enna?",
        ),
        SentenceItem(
          tamil: "நீங்கள் யார்?",
          english: "Who are you?",
          transliteration: "Neengal yaar?",
        ),
      ],
    ),

    // 🔹 PRONOUNS
    BeginnerSubsection(
      parentSectionTitle: "Introduction",
      title: "Pronouns",
      words: [
        WordItem(tamil: "நான்", english: "I", transliteration: "Naan"),
        WordItem(tamil: "நீ", english: "You (informal)", transliteration: "Nee"),
        WordItem(tamil: "நீங்கள்", english: "You (formal)", transliteration: "Neengal"),
        WordItem(tamil: "அவன்", english: "He", transliteration: "Avan"),
        WordItem(tamil: "அவள்", english: "She", transliteration: "Aval"),
        WordItem(tamil: "நாம்", english: "We", transliteration: "Naam"),
        WordItem(tamil: "அவர்கள்", english: "They", transliteration: "Avargal"),
      ],
      sentences: [
        SentenceItem(
          tamil: "நான் தமிழ் கற்கிறேன்.",
          english: "I am learning Tamil.",
          transliteration: "Naan Tamil karkkiren.",
        ),
      ],
    ),

    // 🔹 BASIC ACTION VERBS
    BeginnerSubsection(
      parentSectionTitle: "Introduction",
      title: "Basic Verbs",
      words: [
        WordItem(tamil: "செல்", english: "Go", transliteration: "Sel"),
        WordItem(tamil: "வா", english: "Come", transliteration: "Vaa"),
        WordItem(tamil: "சாப்பிடு", english: "Eat", transliteration: "Saapidu"),
        WordItem(tamil: "குடி", english: "Drink", transliteration: "Kudi"),
        WordItem(tamil: "பேசு", english: "Speak", transliteration: "Pesu"),
        WordItem(tamil: "பார்", english: "See", transliteration: "Paar"),
        WordItem(tamil: "உட்கார்", english: "Sit", transliteration: "Utkaar"),
      ],
      sentences: [
        SentenceItem(
          tamil: "என்னுடன் வாருங்கள்.",
          english: "Come with me.",
          transliteration: "Ennudan vaarungal.",
        ),
        SentenceItem(
          tamil: "என்னுடன் உட்காருங்கள்.",
          english: "Sit with me.",
          transliteration: "Ennudan utkaarungal.",
        ),
        SentenceItem(
          tamil: "நீங்கள் சாப்பிட்டீர்களா?",
          english: "Did you eat?",
          transliteration: "Neengal saappitteergalaa?",
        ),
      ],
    ),

    // 🔹 MINI CONVERSATIONS
    BeginnerSubsection(
      parentSectionTitle: "Introduction",
      title: "Mini Conversations",
      words: [],
      sentences: [
        SentenceItem(
          tamil: "வணக்கம்! உங்கள் பெயர் என்ன?",
          english: "Hello! What is your name?",
          transliteration: "Vanakkam! Ungal peyar enna?",
        ),
        SentenceItem(
          tamil: "என் பெயர் அருண்.",
          english: "My name is Arun.",
          transliteration: "En peyar Arun.",
        ),
        SentenceItem(
          tamil: "நீங்கள் எங்கே இருந்து வருகிறீர்கள்?",
          english: "Where are you from?",
          transliteration: "Neengal enge irundhu varugireergal?",
        ),
        SentenceItem(
          tamil: "நான் சென்னை இருந்து வருகிறேன்.",
          english: "I am from Chennai.",
          transliteration: "Naan Chennai irundhu varugiren.",
        ),
        SentenceItem(
          tamil: "நீங்கள் தமிழ் பேசுகிறீர்களா?",
          english: "Do you speak Tamil?",
          transliteration: "Neengal Tamil pesugireergalaa?",
        ),
        SentenceItem(
          tamil: "சிறிது தமிழ் பேசுவேன்.",
          english: "I speak a little Tamil.",
          transliteration: "Siridhu Tamil pesuven.",
        ),
      ],
    ),

  ],
);
