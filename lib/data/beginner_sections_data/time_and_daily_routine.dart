import '../../models/beginner_subsection.dart';
import '../../models/word_item.dart';
import '../../models/sentence_item.dart';
import '../../models/beginner_section.dart';

final BeginnerSubsection timeAndDailyRoutineSubsection =
    BeginnerSubsection(
  parentSectionTitle: "Time & Daily Routine",
  title: "Time & Daily Routine",
  words: [

    // 🔹 Core Time Words
    WordItem(tamil: "இன்று", english: "Today", transliteration: "Indru"),
    WordItem(tamil: "நாளை", english: "Tomorrow", transliteration: "Naalai"),
    WordItem(tamil: "நேற்று", english: "Yesterday", transliteration: "Netru"),
    WordItem(tamil: "காலை", english: "Morning", transliteration: "Kaalai"),
    WordItem(tamil: "மதியம்", english: "Afternoon", transliteration: "Mathiyam"),
    WordItem(tamil: "மாலை", english: "Evening", transliteration: "Maalai"),
    WordItem(tamil: "இரவு", english: "Night", transliteration: "Iravu"),
    WordItem(tamil: "மணி", english: "Hour", transliteration: "Mani"),
    WordItem(tamil: "நிமிடம்", english: "Minute", transliteration: "Nimidam"),
    WordItem(tamil: "விநாடி", english: "Second", transliteration: "Vinadi"),
    WordItem(tamil: "வாரம்", english: "Week", transliteration: "Vaaram"),
    WordItem(tamil: "மாதம்", english: "Month", transliteration: "Maatham"),
    WordItem(tamil: "ஆண்டு", english: "Year", transliteration: "Aandu"),

    // 🔹 Frequency Words
    WordItem(tamil: "தினமும்", english: "Daily", transliteration: "Dinamum"),
    WordItem(tamil: "அடிக்கடி", english: "Often", transliteration: "Adikkadi"),
    WordItem(tamil: "சில நேரம்", english: "Sometimes", transliteration: "Sila Neram"),
    WordItem(tamil: "எப்போதும்", english: "Always", transliteration: "Eppothum"),
    WordItem(tamil: "அரிதாக", english: "Rarely", transliteration: "Aridhaga"),

    // 🔹 Routine Verbs
    WordItem(tamil: "எழு", english: "Wake up", transliteration: "Ezhu"),
    WordItem(tamil: "எழுந்திரு", english: "Get up", transliteration: "Ezhundhiru"),
    WordItem(tamil: "தூங்கு", english: "Sleep", transliteration: "Thoongu"),
    WordItem(tamil: "குளி", english: "Bathe", transliteration: "Kuli"),
    WordItem(tamil: "படி", english: "Study", transliteration: "Padi"),
    WordItem(tamil: "வேலை செய்", english: "Work", transliteration: "Velai Sei"),
    WordItem(tamil: "சாப்பிடு", english: "Eat", transliteration: "Saapidu"),
    WordItem(tamil: "குடி", english: "Drink", transliteration: "Kudi"),
    WordItem(tamil: "செல்", english: "Go", transliteration: "Sel"),
    WordItem(tamil: "வா", english: "Come", transliteration: "Vaa"),
    WordItem(tamil: "ஓய்வு எடு", english: "Take rest", transliteration: "Oyvu Edu"),
    WordItem(tamil: "விளையாடு", english: "Play", transliteration: "Vilaiyaadu"),
  ],

  sentences: [

    SentenceItem(
      tamil: "நான் காலை 6 மணிக்கு எழுகிறேன்.",
      english: "I wake up at 6 in the morning.",
      transliteration: "Naan kaalai 6 manikku ezhugiren.",
    ),
    SentenceItem(
      tamil: "நான் தினமும் தமிழ் படிக்கிறேன்.",
      english: "I study Tamil daily.",
      transliteration: "Naan dinamum Tamil padikkiren.",
    ),
    SentenceItem(
      tamil: "நான் இரவில் தூங்குகிறேன்.",
      english: "I sleep at night.",
      transliteration: "Naan iravil thoongugiren.",
    ),
    SentenceItem(
      tamil: "இன்று திங்கட்கிழமை.",
      english: "Today is Monday.",
      transliteration: "Indru thingatkizhamai.",
    ),
    SentenceItem(
      tamil: "நேற்று நான் வீட்டில் இருந்தேன்.",
      english: "Yesterday I was at home.",
      transliteration: "Netru naan veettil irundhen.",
    ),
    SentenceItem(
      tamil: "நாளை நான் சென்னை செல்கிறேன்.",
      english: "Tomorrow I am going to Chennai.",
      transliteration: "Naalai naan Chennai selgiren.",
    ),
    SentenceItem(
      tamil: "நாம் வாரம் ஒருமுறை சந்திக்கிறோம்.",
      english: "We meet once a week.",
      transliteration: "Naam vaaram orumurai sandhikkirOm.",
    ),
    SentenceItem(
      tamil: "அவன் சீக்கிரம் எழுகிறான்.",
      english: "He wakes up early.",
      transliteration: "Avan seekkiram ezhugiraan.",
    ),
    SentenceItem(
      tamil: "இந்த மாதம் நான் வேலை செய்கிறேன்.",
      english: "I am working this month.",
      transliteration: "Indha maatham naan velai seigiren.",
    ),
    SentenceItem(
      tamil: "அவள் சில நேரம் ஓய்வு எடுக்கிறாள்.",
      english: "She sometimes takes rest.",
      transliteration: "Aval sila neram oyvu edukiraal.",
    ),
  ],
);

final BeginnerSection timeAndDailyRoutineSection =
    BeginnerSection(
  title: "Time & Daily Routine",
  subsections: [
    timeAndDailyRoutineSubsection,
  ],
);
