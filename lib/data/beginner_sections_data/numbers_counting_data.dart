import '../../models/beginner_section.dart';
import '../../models/beginner_subsection.dart';
import '../../models/word_item.dart';
import '../../models/sentence_item.dart';

BeginnerSection numbersCountingSection = BeginnerSection(
  title: "Numbers & Counting",
  subsections: [

    // 🔹 NUMBERS 1–20
    BeginnerSubsection(
      parentSectionTitle: "Numbers & Counting",
      title: "Numbers 1–20",
      words: [
        WordItem(tamil: "ஒன்று", english: "1 - One", transliteration: "Ondru"),
        WordItem(tamil: "இரண்டு", english: "2 - Two", transliteration: "Irandu"),
        WordItem(tamil: "மூன்று", english: "3 - Three", transliteration: "Moondru"),
        WordItem(tamil: "நான்கு", english: "4 - Four", transliteration: "Naangu"),
        WordItem(tamil: "ஐந்து", english: "5 - Five", transliteration: "Aindhu"),
        WordItem(tamil: "ஆறு", english: "6 - Six", transliteration: "Aaru"),
        WordItem(tamil: "ஏழு", english: "7 - Seven", transliteration: "Ezhu"),
        WordItem(tamil: "எட்டு", english: "8 - Eight", transliteration: "Ettu"),
        WordItem(tamil: "ஒன்பது", english: "9 - Nine", transliteration: "Onbadhu"),
        WordItem(tamil: "பத்து", english: "10 - Ten", transliteration: "Pathu"),
        WordItem(tamil: "பதினொன்று", english: "11 - Eleven", transliteration: "Pathinonru"),
        WordItem(tamil: "பன்னிரண்டு", english: "12 - Twelve", transliteration: "Pannirandu"),
        WordItem(tamil: "பதிமூன்று", english: "13 - Thirteen", transliteration: "Pathimoonru"),
        WordItem(tamil: "பதினான்கு", english: "14 - Fourteen", transliteration: "Pathinaangu"),
        WordItem(tamil: "பதினைந்து", english: "15 - Fifteen", transliteration: "Pathinaindhu"),
        WordItem(tamil: "பதினாறு", english: "16 - Sixteen", transliteration: "Pathinaaru"),
        WordItem(tamil: "பதினேழு", english: "17 - Seventeen", transliteration: "Pathinezhu"),
        WordItem(tamil: "பதினெட்டு", english: "18 - Eighteen", transliteration: "Pathinettu"),
        WordItem(tamil: "பத்தொன்பது", english: "19 - Nineteen", transliteration: "Pathonbadhu"),
        WordItem(tamil: "இருபது", english: "20 - Twenty", transliteration: "Irubadhu"),
      ],
      sentences: [],
    ),

    // 🔹 TENS (30–100)
    BeginnerSubsection(
      parentSectionTitle: "Numbers & Counting",
      title: "Tens",
      words: [
        WordItem(tamil: "முப்பது", english: "30 - Thirty", transliteration: "Muppadhu"),
        WordItem(tamil: "நாற்பது", english: "40 - Forty", transliteration: "Naarpadhu"),
        WordItem(tamil: "ஐம்பது", english: "50 - Fifty", transliteration: "Aimbadhu"),
        WordItem(tamil: "அறுபது", english: "60 - Sixty", transliteration: "Arubadhu"),
        WordItem(tamil: "எழுபது", english: "70 - Seventy", transliteration: "Ezhubadhu"),
        WordItem(tamil: "எண்பது", english: "80 - Eighty", transliteration: "Enbadhu"),
        WordItem(tamil: "தொண்ணூறு", english: "90 - Ninety", transliteration: "Thonnooru"),
        WordItem(tamil: "நூறு", english: "100 - Hundred", transliteration: "Nooru"),
      ],
      sentences: [],
    ),

    // 🔹 HOW TO FORM NUMBERS (21–99)
    BeginnerSubsection(
      parentSectionTitle: "Numbers & Counting",
      title: "Number Formation",
      words: [
        WordItem(tamil: "இருபத்து ஒன்று", english: "21", transliteration: "Irubathu Ondru"),
        WordItem(tamil: "முப்பத்து ஐந்து", english: "35", transliteration: "Muppathu Aindhu"),
        WordItem(tamil: "நாற்பத்து இரண்டு", english: "42", transliteration: "Naarpathu Irandu"),
        WordItem(tamil: "ஐம்பத்து எட்டு", english: "58", transliteration: "Aimbathu Ettu"),
        WordItem(tamil: "எண்பத்து ஒன்பது", english: "89", transliteration: "Enbathu Onbadhu"),
      ],
      sentences: [],
    ),

    // 🔹 USING NUMBERS IN SENTENCES
    BeginnerSubsection(
      parentSectionTitle: "Numbers & Counting",
      title: "Numbers in Sentences",
      words: [],
      sentences: [
        SentenceItem(
          tamil: "எனக்கு இரண்டு புத்தகங்கள் உள்ளன.",
          english: "I have two books.",
          transliteration: "Enakku irandu puththagangal ullana.",
        ),
        SentenceItem(
          tamil: "அவர் மூன்று குழந்தைகள் உள்ளார்.",
          english: "He has three children.",
          transliteration: "Avar moonru kuzhandhaigal ullaar.",
        ),
        SentenceItem(
          tamil: "என் வயது இருபத்து ஒன்று.",
          english: "My age is twenty one.",
          transliteration: "En vayadhu irubathu ondru.",
        ),
        SentenceItem(
          tamil: "நான் நாற்பது ரூபாய் செலுத்தினேன்.",
          english: "I paid forty rupees.",
          transliteration: "Naan naarpadhu roobai seluthinen.",
        ),
      ],
    ),

    // 🔹 MINI NUMBER QUIZ CONTENT
    BeginnerSubsection(
      parentSectionTitle: "Numbers & Counting",
      title: "Number Quiz Practice",
      words: [],
      sentences: [
        SentenceItem(
          tamil: "ஐந்து + மூன்று = ?",
          english: "5 + 3 = ?",
          transliteration: "Aindhu + Moondru = ?",
        ),
        SentenceItem(
          tamil: "பத்து - இரண்டு = ?",
          english: "10 - 2 = ?",
          transliteration: "Pathu - Irandu = ?",
        ),
        SentenceItem(
          tamil: "மூன்று மடங்கு நான்கு = ?",
          english: "3 times 4 = ?",
          transliteration: "Moondru madangu Naangu = ?",
        ),
      ],
    ),

  ],
);
