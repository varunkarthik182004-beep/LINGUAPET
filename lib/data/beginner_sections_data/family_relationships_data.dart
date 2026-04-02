import '../../models/beginner_section.dart';
import '../../models/beginner_subsection.dart';
import '../../models/word_item.dart';
import '../../models/sentence_item.dart';



BeginnerSection familyRelationshipsSection = BeginnerSection(
  title: "Family & Relationships",
  subsections: [

    // 🔹 IMMEDIATE FAMILY
    BeginnerSubsection(
      parentSectionTitle: "Family & Relationships",
      title: "Immediate Family",
      words: [
        WordItem(tamil: "அப்பா", english: "Father", transliteration: "Appa"),
        WordItem(tamil: "அம்மா", english: "Mother", transliteration: "Amma"),
        WordItem(tamil: "மகன்", english: "Son", transliteration: "Magan"),
        WordItem(tamil: "மகள்", english: "Daughter", transliteration: "Magal"),
        WordItem(tamil: "கணவன்", english: "Husband", transliteration: "Kanavan"),
        WordItem(tamil: "மனைவி", english: "Wife", transliteration: "Manaivi"),
      ],
      sentences: [
        SentenceItem(
          tamil: "இவர் என் அப்பா.",
          english: "This is my father.",
          transliteration: "Ivar en appa.",
        ),
        SentenceItem(
          tamil: "என் அம்மா ஆசிரியர்.",
          english: "My mother is a teacher.",
          transliteration: "En amma aasiriyar.",
        ),
      ],
    ),

    // 🔹 SIBLINGS
    BeginnerSubsection(
      parentSectionTitle: "Family & Relationships",
      title: "Brothers & Sisters",
      words: [
        WordItem(tamil: "அண்ணன்", english: "Elder Brother", transliteration: "Annan"),
        WordItem(tamil: "தம்பி", english: "Younger Brother", transliteration: "Thambi"),
        WordItem(tamil: "அக்கா", english: "Elder Sister", transliteration: "Akka"),
        WordItem(tamil: "தங்கை", english: "Younger Sister", transliteration: "Thangai"),
      ],
      sentences: [
        SentenceItem(
          tamil: "எனக்கு ஒரு அண்ணன் உள்ளார்.",
          english: "I have an elder brother.",
          transliteration: "Enakku oru annan ullaar.",
        ),
      ],
    ),

    // 🔹 GRANDPARENTS
    BeginnerSubsection(
      parentSectionTitle: "Family & Relationships",
      title: "Grandparents",
      words: [
        WordItem(tamil: "தாத்தா", english: "Grandfather", transliteration: "Thaatha"),
        WordItem(tamil: "பாட்டி", english: "Grandmother", transliteration: "Paati"),
      ],
      sentences: [
        SentenceItem(
          tamil: "என் பாட்டி மிகவும் அன்பானவர்.",
          english: "My grandmother is very loving.",
          transliteration: "En paati migavum anbaanavar.",
        ),
      ],
    ),

    // 🔹 MATERNAL & PATERNAL UNCLES / AUNTS
    BeginnerSubsection(
      parentSectionTitle: "Family & Relationships",
      title: "Uncles & Aunts",
      words: [
        WordItem(tamil: "சித்தப்பா", english: "Father's younger brother", transliteration: "Chithappa"),
        WordItem(tamil: "பெரியப்பா", english: "Father's elder brother", transliteration: "Periyappa"),
        WordItem(tamil: "மாமா", english: "Mother's brother", transliteration: "Maama"),
        WordItem(tamil: "அத்தை", english: "Father's sister", transliteration: "Athai"),
        WordItem(tamil: "சித்தி", english: "Mother's younger sister", transliteration: "Chithi"),
        WordItem(tamil: "பெரியம்மா", english: "Mother's elder sister", transliteration: "Periyamma"),
      ],
      sentences: [
        SentenceItem(
          tamil: "என் மாமா சென்னை வசிக்கிறார்.",
          english: "My uncle lives in Chennai.",
          transliteration: "En maama Chennai vasikkirar.",
        ),
      ],
    ),

    // 🔹 COUSINS
    BeginnerSubsection(
      parentSectionTitle: "Family & Relationships",
      title: "Cousins",
      words: [
        WordItem(tamil: "சகோதரன்", english: "Male Cousin / Brother", transliteration: "Sagodharan"),
        WordItem(tamil: "சகோதரி", english: "Female Cousin / Sister", transliteration: "Sagodhari"),
      ],
      sentences: [],
    ),

    // 🔹 IN-LAWS
    BeginnerSubsection(
      parentSectionTitle: "Family & Relationships",
      title: "In-Laws",
      words: [
        WordItem(tamil: "மாமனார்", english: "Father-in-law", transliteration: "Maamanaar"),
        WordItem(tamil: "மாமியார்", english: "Mother-in-law", transliteration: "Maamiyaar"),
        WordItem(tamil: "மருமகன்", english: "Son-in-law", transliteration: "Marumagan"),
        WordItem(tamil: "மருமகள்", english: "Daughter-in-law", transliteration: "Marumagal"),
        WordItem(tamil: "மருமகன் (அண்ணன் மனைவி)", english: "Brother-in-law", transliteration: "Machaan"),
        WordItem(tamil: "மருமகள் (தங்கை கணவன்)", english: "Sister-in-law", transliteration: "Anni"),
      ],
      sentences: [],
    ),

  ],
);
