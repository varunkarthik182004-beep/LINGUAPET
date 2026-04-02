import '../../models/beginner_section.dart';
import '../../models/beginner_subsection.dart';
import '../../models/word_item.dart';
import '../../models/sentence_item.dart';

final BeginnerSection foodAndTastesSection = BeginnerSection(
  title: "Food & Tastes",
  subsections: [

    // 🔹 TASTE & EXPRESSIONS
    BeginnerSubsection(
      parentSectionTitle: "Food & Tastes",
      title: "Taste Expressions",
      words: [
        WordItem(tamil: "இனிப்பு", english: "Sweet", transliteration: "Inippu"),
        WordItem(tamil: "காரம்", english: "Spicy", transliteration: "Kaaram"),
        WordItem(tamil: "புளிப்பு", english: "Sour", transliteration: "Pulippu"),
        WordItem(tamil: "உப்பு", english: "Salty", transliteration: "Uppu"),
        WordItem(tamil: "கசப்பு", english: "Bitter", transliteration: "Kasappu"),
        WordItem(tamil: "ருசி", english: "Taste", transliteration: "Rusi"),
        WordItem(tamil: "சுவை", english: "Flavor", transliteration: "Suvai"),
        WordItem(tamil: "மிக சுவையாக", english: "Very tasty", transliteration: "Miga suvaiyaaga"),
        WordItem(tamil: "சூப்பர் ருசி", english: "Super delicious", transliteration: "Super rusi"),
        WordItem(tamil: "வாய் ஊறும்", english: "Mouth-watering", transliteration: "Vaai oorum"),
        WordItem(tamil: "அருமையான", english: "Delicious", transliteration: "Arumaiyaana"),
        WordItem(tamil: "பசிக்கிறது", english: "Feeling hungry", transliteration: "Pasikkiradhu"),
        WordItem(tamil: "பசி", english: "Hunger", transliteration: "Pasi"),
        WordItem(tamil: "ஆசை", english: "Craving", transliteration: "Aasai"),
        WordItem(tamil: "சூடான", english: "Hot (temperature)", transliteration: "Soodaana"),
        WordItem(tamil: "குளிர்ந்த", english: "Cold", transliteration: "Kulirndha"),
        WordItem(tamil: "புதியது", english: "Fresh", transliteration: "Pudhiya"),
        WordItem(tamil: "பழையது", english: "Stale", transliteration: "Pazhaiyadhu"),
      ],
      sentences: [],
    ),

    // 🔹 SOUTH INDIAN FOOD ITEMS
    BeginnerSubsection(
      parentSectionTitle: "Food & Tastes",
      title: "South Indian Food Items",
      words: [
        WordItem(tamil: "இட்லி", english: "Idli", transliteration: "Idli"),
        WordItem(tamil: "தோசை", english: "Dosa", transliteration: "Dosai"),
        WordItem(tamil: "மசாலா தோசை", english: "Masala Dosa", transliteration: "Masala Dosai"),
        WordItem(tamil: "வடை", english: "Vada", transliteration: "Vadai"),
        WordItem(tamil: "சாம்பார்", english: "Sambar", transliteration: "Sambar"),
        WordItem(tamil: "ரசம்", english: "Rasam", transliteration: "Rasam"),
        WordItem(tamil: "பொங்கல்", english: "Pongal", transliteration: "Pongal"),
        WordItem(tamil: "பிரியாணி", english: "Biryani", transliteration: "Biryani"),
        WordItem(tamil: "லெமன் சாதம்", english: "Lemon Rice", transliteration: "Lemon Saadham"),
        WordItem(tamil: "தயிர் சாதம்", english: "Curd Rice", transliteration: "Thayir Saadham"),
        WordItem(tamil: "பருப்பு சாதம்", english: "Dal Rice", transliteration: "Paruppu Saadham"),
        WordItem(tamil: "சப்பாத்தி", english: "Chapati", transliteration: "Chappathi"),
        WordItem(tamil: "பாயாசம்", english: "Payasam", transliteration: "Payasam"),
        WordItem(tamil: "ஹல்வா", english: "Halwa", transliteration: "Halwa"),
        WordItem(tamil: "முருக்கு", english: "Murukku", transliteration: "Murukku"),
        WordItem(tamil: "அப்பளம்", english: "Papad", transliteration: "Appalam"),
        WordItem(tamil: "மீன் குழம்பு", english: "Fish Curry", transliteration: "Meen Kuzhambu"),
        WordItem(tamil: "கோழி குழம்பு", english: "Chicken Curry", transliteration: "Kozhi Kuzhambu"),
      ],
      sentences: [],
    ),

    // 🔹 QUIZ (ONLY ON TASTE EXPRESSIONS)
    BeginnerSubsection(
      parentSectionTitle: "Food & Tastes",
      title: "Taste Expression Quiz",
      words: [],
      sentences: [
        SentenceItem(
          tamil: "Super delicious = ?",
          english: "Translate to Tamil",
          transliteration: "Soooper rusi",
        ),
        SentenceItem(
          tamil: "வாய் ஊறும் = ?",
          english: "Translate to English",
          transliteration: "Mouth-watering",
        ),
        SentenceItem(
          tamil: "Craving = ?",
          english: "Translate to Tamil",
          transliteration: "Aasai",
        ),
        SentenceItem(
          tamil: "Feeling hungry = ?",
          english: "Translate to Tamil",
          transliteration: "Pasikkiradhu",
        ),
      ],
    ),

    // 🔹 10 MIXED SENTENCES (Integration Practice)
    BeginnerSubsection(
      parentSectionTitle: "Food & Tastes",
      title: "Food Sentences Practice",
      words: [],
      sentences: [

        SentenceItem(
          tamil: "நான் இட்லி சாப்பிடுகிறேன்.",
          english: "I am eating idli.",
          transliteration: "Naan idli saappidugiren.",
        ),

        SentenceItem(
          tamil: "இது மிகவும் சுவையாக உள்ளது.",
          english: "This is very tasty.",
          transliteration: "Idhu migavum suvaiyaaga ulladhu.",
        ),

        SentenceItem(
          tamil: "என் அம்மா சாம்பார் சமைக்கிறார்.",
          english: "My mother cooks sambar.",
          transliteration: "En amma sambar samaikkiraal.",
        ),

        SentenceItem(
          tamil: "எனக்கு பிரியாணி மிகவும் பிடிக்கும்.",
          english: "I like biryani very much.",
          transliteration: "Enakku biryani migavum pidikkum.",
        ),

        SentenceItem(
          tamil: "என் சகோதரி வடை சாப்பிடுகிறாள்.",
          english: "My sister is eating vada.",
          transliteration: "En sagodhari vadai saappidugiraal.",
        ),

        SentenceItem(
          tamil: "நான் இரண்டு தோசை சாப்பிட்டேன்.",
          english: "I ate two dosas.",
          transliteration: "Naan irandu dosai saappitten.",
        ),

        SentenceItem(
          tamil: "அது வாய் ஊறும் உணவு.",
          english: "That is mouth-watering food.",
          transliteration: "Adhu vaai oorum unavu.",
        ),

        SentenceItem(
          tamil: "எனக்கு இனிப்பு ஆசை வருகிறது.",
          english: "I am craving sweets.",
          transliteration: "Enakku inippu aasai varugiradhu.",
        ),

        SentenceItem(
          tamil: "நாம் ஹோட்டலில் சாப்பிடலாம்.",
          english: "We can eat at the hotel.",
          transliteration: "Naam hotelil saappidalaam.",
        ),

        SentenceItem(
          tamil: "அவர்கள் மூன்று இட்லி சாப்பிட்டார்கள்.",
          english: "They ate three idlis.",
          transliteration: "Avargal moondru idli saappittaargal.",
        ),
      ],
    ),

  ],
);
