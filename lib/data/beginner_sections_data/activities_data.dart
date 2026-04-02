import '../../models/beginner_section.dart';
import '../../models/beginner_subsection.dart';
import '../../models/word_item.dart';
import '../../models/sentence_item.dart';

BeginnerSection activitiesSection = BeginnerSection(
  title: "Activities",
  subsections: [

    // 🔹 50 DAILY ACTIVITIES
    BeginnerSubsection(
      parentSectionTitle: "Activities",
      title: "Daily Activities (Core Verbs)",
      words: [

        WordItem(tamil: "எழுந்திரு", english: "Wake up", transliteration: "Ezhundhiru"),
        WordItem(tamil: "எழு", english: "Get up", transliteration: "Ezhu"),
        WordItem(tamil: "தூங்கு", english: "Sleep", transliteration: "Thoongu"),
        WordItem(tamil: "ஓடு", english: "Run", transliteration: "Odu"),
        WordItem(tamil: "நட", english: "Walk", transliteration: "Nada"),
        WordItem(tamil: "நில்", english: "Stand", transliteration: "Nil"),
        WordItem(tamil: "உட்கார்", english: "Sit", transliteration: "Utkaar"),
        WordItem(tamil: "பேசு", english: "Talk", transliteration: "Pesu"),
        WordItem(tamil: "பார்", english: "See", transliteration: "Paar"),
        WordItem(tamil: "பார்த்து", english: "Watch", transliteration: "Paarthu"),
        WordItem(tamil: "விளையாடு", english: "Play", transliteration: "Vilayaadu"),
        WordItem(tamil: "சாப்பிடு", english: "Eat", transliteration: "Saapidu"),
        WordItem(tamil: "குடி", english: "Drink", transliteration: "Kudi"),
        WordItem(tamil: "படி", english: "Study", transliteration: "Padi"),
        WordItem(tamil: "எழுது", english: "Write", transliteration: "Ezhudhu"),
        WordItem(tamil: "கேள்", english: "Listen", transliteration: "Kel"),
        WordItem(tamil: "சிரி", english: "Laugh", transliteration: "Siri"),
        WordItem(tamil: "அழு", english: "Cry", transliteration: "Azhugu"),
        WordItem(tamil: "குளி", english: "Bathe", transliteration: "Kuli"),
        WordItem(tamil: "அழகு செய்", english: "Get ready", transliteration: "Azhagu sei"),
        WordItem(tamil: "சமை", english: "Cook", transliteration: "Samai"),
        WordItem(tamil: "துவை", english: "Wash clothes", transliteration: "Thuvai"),
        WordItem(tamil: "சுத்தம் செய்", english: "Clean", transliteration: "Suththam sei"),
        WordItem(tamil: "திற", english: "Open", transliteration: "Thira"),
        WordItem(tamil: "மூடு", english: "Close", transliteration: "Moodu"),
        WordItem(tamil: "கொடு", english: "Give", transliteration: "Kodu"),
        WordItem(tamil: "எடு", english: "Take", transliteration: "Edu"),
        WordItem(tamil: "வாங்கு", english: "Buy", transliteration: "Vaangu"),
        WordItem(tamil: "விற்", english: "Sell", transliteration: "Vir"),
        WordItem(tamil: "செல்", english: "Go", transliteration: "Sel"),
        WordItem(tamil: "வா", english: "Come", transliteration: "Vaa"),
        WordItem(tamil: "ஓய்வு எடு", english: "Rest", transliteration: "Oyvu edu"),
        WordItem(tamil: "பயிற்சி செய்", english: "Exercise", transliteration: "Payirchi sei"),
        WordItem(tamil: "செய்", english: "Do", transliteration: "Sei"),
        WordItem(tamil: "உதவு", english: "Help", transliteration: "Udhavu"),
        WordItem(tamil: "காத்திரு", english: "Wait", transliteration: "Kaathiru"),
        WordItem(tamil: "தொடங்கு", english: "Start", transliteration: "Thodangu"),
        WordItem(tamil: "முடி", english: "Finish", transliteration: "Mudi"),
        WordItem(tamil: "அழை", english: "Call", transliteration: "Azhai"),
        WordItem(tamil: "படம் எடு", english: "Take photo", transliteration: "Padam edu"),
        WordItem(tamil: "ஓட்டு", english: "Drive", transliteration: "Ottu"),
        WordItem(tamil: "பயணம் செய்", english: "Travel", transliteration: "Payanam sei"),
        WordItem(tamil: "வேலை செய்", english: "Work", transliteration: "Velai sei"),
        WordItem(tamil: "சிந்தி", english: "Think", transliteration: "Sindhi"),
        WordItem(tamil: "கற்பி", english: "Teach", transliteration: "Karpi"),
        WordItem(tamil: "கற்று", english: "Learn", transliteration: "Katru"),
        WordItem(tamil: "அணிந்து", english: "Wear", transliteration: "Anindhu"),
        WordItem(tamil: "பேசிக்கொள்", english: "Chat", transliteration: "Pesikkol"),
        WordItem(tamil: "காத்து", english: "Protect", transliteration: "Kaathu"),
        WordItem(tamil: "அணை", english: "Turn off", transliteration: "Anai"),
      ],
      sentences: [],
    ),

    // 🔹 QUIZ PRACTICE
    BeginnerSubsection(
      parentSectionTitle: "Activities",
      title: "Activity Quiz Practice",
      words: [],
      sentences: [
        SentenceItem(
          tamil: "Wake up = ?",
          english: "Translate to Tamil",
          transliteration: "Ezhundhiru",
        ),
        SentenceItem(
          tamil: "சாப்பிடு = ?",
          english: "Translate to English",
          transliteration: "Eat",
        ),
        SentenceItem(
          tamil: "Run = ?",
          english: "Translate to Tamil",
          transliteration: "Odu",
        ),
      ],
    ),

    // 🔹 10 SENTENCES USING ACTIVITIES
    BeginnerSubsection(
      parentSectionTitle: "Activities",
      title: "Activity Sentences",
      words: [],
      sentences: [
        SentenceItem(
          tamil: "நான் காலை எழுந்திருப்பேன்.",
          english: "I wake up in the morning.",
          transliteration: "Naan kaalai ezhundhiruppen.",
        ),
        SentenceItem(
          tamil: "நான் தினமும் ஓடுகிறேன்.",
          english: "I run daily.",
          transliteration: "Naan dhinamum odugiren.",
        ),
        SentenceItem(
          tamil: "அவன் பள்ளிக்கு செல்கிறான்.",
          english: "He goes to school.",
          transliteration: "Avan pallikku selgiraan.",
        ),
        SentenceItem(
          tamil: "நான் தமிழ் படிக்கிறேன்.",
          english: "I study Tamil.",
          transliteration: "Naan Tamil padikkiren.",
        ),
        SentenceItem(
          tamil: "அவள் சாப்பிடுகிறாள்.",
          english: "She is eating.",
          transliteration: "Aval saappidugiraal.",
        ),
        SentenceItem(
          tamil: "நாம் விளையாடுகிறோம்.",
          english: "We are playing.",
          transliteration: "Naam vilayaadugiroam.",
        ),
        SentenceItem(
          tamil: "நான் வேலை செய்கிறேன்.",
          english: "I am working.",
          transliteration: "Naan velai seigiren.",
        ),
        SentenceItem(
          tamil: "அவர் பேசுகிறார்.",
          english: "He is speaking.",
          transliteration: "Avar pesugirar.",
        ),
        SentenceItem(
          tamil: "நான் தூங்குகிறேன்.",
          english: "I am sleeping.",
          transliteration: "Naan thoongugiren.",
        ),
        SentenceItem(
          tamil: "அவர்கள் பயணம் செய்கிறார்கள்.",
          english: "They are traveling.",
          transliteration: "Avargal payanam seigiraargal.",
        ),
      ],
    ),

  ],
);
