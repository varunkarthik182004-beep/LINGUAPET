import '../../models/beginner_subsection.dart';
import '../../models/word_item.dart';
import '../../models/sentence_item.dart';
import '../../models/beginner_section.dart';


BeginnerSection vegetablesFruitsSection = BeginnerSection(
  title: "Vegetables & Fruits",
  subsections: [

    // 🔹 VEGETABLES
    BeginnerSubsection(
      parentSectionTitle: "Vegetables & Fruits",
      title: "Vegetables",
      words: [

        WordItem(tamil: "வெங்காயம்", english: "Onion", transliteration: "Vengayam"),
        WordItem(tamil: "தக்காளி", english: "Tomato", transliteration: "Thakkali"),
        WordItem(tamil: "உருளைக்கிழங்கு", english: "Potato", transliteration: "Urulaikizhangu"),
        WordItem(tamil: "காரட்", english: "Carrot", transliteration: "Carrot"),
        WordItem(tamil: "பீன்ஸ்", english: "Beans", transliteration: "Beans"),
        WordItem(tamil: "முருங்கைக்காய்", english: "Drumstick", transliteration: "Murungakkai"),
        WordItem(tamil: "கத்தரிக்காய்", english: "Brinjal", transliteration: "Katharikkai"),
        WordItem(tamil: "பாகற்காய்", english: "Bitter gourd", transliteration: "Paagarkkai"),
        WordItem(tamil: "சுரைக்காய்", english: "Bottle gourd", transliteration: "Suraikkai"),
        WordItem(tamil: "பூசணிக்காய்", english: "Pumpkin", transliteration: "Poosanikai"),
        WordItem(tamil: "முட்டைகோஸ்", english: "Cabbage", transliteration: "Muttakos"),
        WordItem(tamil: "கோவைக்காய்", english: "Ivy gourd", transliteration: "Kovaikkai"),
        WordItem(tamil: "கீரை", english: "Spinach", transliteration: "Keerai"),
        WordItem(tamil: "வெண்டைக்காய்", english: "Lady’s finger", transliteration: "Vendakkai"),
        WordItem(tamil: "பூண்டு", english: "Garlic", transliteration: "Poondu"),
        WordItem(tamil: "இஞ்சி", english: "Ginger", transliteration: "Inji"),
        WordItem(tamil: "பச்சை மிளகாய்", english: "Green chilli", transliteration: "Pachai milagai"),
        WordItem(tamil: "சோளம்", english: "Corn", transliteration: "Cholam"),
        WordItem(tamil: "காலிஃபிளவர்", english: "Cauliflower", transliteration: "Cauliflower"),

      ],
      sentences: [],
    ),

    // 🔹 FRUITS
    BeginnerSubsection(
      parentSectionTitle: "Vegetables & Fruits",
      title: "Fruits",
      words: [

        WordItem(tamil: "மாம்பழம்", english: "Mango", transliteration: "Maampazham"),
        WordItem(tamil: "ஆப்பிள்", english: "Apple", transliteration: "Apple"),
        WordItem(tamil: "வாழைப்பழம்", english: "Banana", transliteration: "Vaazhaipazham"),
        WordItem(tamil: "திராட்சை", english: "Grapes", transliteration: "Thiraatchai"),
        WordItem(tamil: "ஆரஞ்சு", english: "Orange", transliteration: "Orange"),
        WordItem(tamil: "பப்பாளி", english: "Papaya", transliteration: "Pappali"),
        WordItem(tamil: "மாதுளை", english: "Pomegranate", transliteration: "Maadhulai"),
        WordItem(tamil: "அன்னாசி", english: "Pineapple", transliteration: "Annaasi"),
        WordItem(tamil: "தர்பூசணி", english: "Watermelon", transliteration: "Tharboosani"),
        WordItem(tamil: "முசும்பி", english: "Sweet lime", transliteration: "Musumbi"),
        WordItem(tamil: "சீதாப்பழம்", english: "Custard apple", transliteration: "Seethapazham"),
        WordItem(tamil: "ஜாம்பழம்", english: "Guava", transliteration: "Jaampazham"),
        WordItem(tamil: "பேரிக்காய்", english: "Pear", transliteration: "Perikkai"),
        WordItem(tamil: "சப்போட்டா", english: "Sapota", transliteration: "Sapota"),
        WordItem(tamil: "ஸ்ட்ராபெரி", english: "Strawberry", transliteration: "Strawberry"),

      ],
      sentences: [],
    ),

    // 🔹 QUIZ SECTION
    BeginnerSubsection(
      parentSectionTitle: "Vegetables & Fruits",
      title: "Vegetable & Fruit Quiz",
      words: [],
      sentences: [

        SentenceItem(
          tamil: "Potato = ?",
          english: "Translate to Tamil",
          transliteration: "Urulaikizhangu",
        ),

        SentenceItem(
          tamil: "வெங்காயம் = ?",
          english: "Translate to English",
          transliteration: "Onion",
        ),

        SentenceItem(
          tamil: "Mango = ?",
          english: "Translate to Tamil",
          transliteration: "Maampazham",
        ),

        SentenceItem(
          tamil: "வாழைப்பழம் = ?",
          english: "Translate to English",
          transliteration: "Banana",
        ),

      ],
    ),

    // 🔹 INTEGRATED SENTENCES
    BeginnerSubsection(
      parentSectionTitle: "Vegetables & Fruits",
      title: "Practice Sentences",
      words: [],
      sentences: [

        SentenceItem(
          tamil: "என் அம்மா தக்காளி மற்றும் வெங்காயம் வாங்கினார்.",
          english: "My mother bought tomato and onion.",
          transliteration: "En amma thakkali matrum vengayam vaanginaar.",
        ),

        SentenceItem(
          tamil: "நான் இரண்டு மாம்பழம் சாப்பிட்டேன்.",
          english: "I ate two mangoes.",
          transliteration: "Naan irandu maampazham saappitten.",
        ),

        SentenceItem(
          tamil: "என் சகோதரன் காரட் சாப்பிடுகிறான்.",
          english: "My brother is eating carrot.",
          transliteration: "En sagodharan carrot saappidugiraan.",
        ),

        SentenceItem(
          tamil: "அவர்கள் மூன்று வாழைப்பழம் வாங்கினர்.",
          english: "They bought three bananas.",
          transliteration: "Avargal moondru vaazhaipazham vaanginar.",
        ),

        SentenceItem(
          tamil: "இந்த பழம் மிகவும் இனிப்பு.",
          english: "This fruit is very sweet.",
          transliteration: "Indha pazham migavum inippu.",
        ),

        SentenceItem(
          tamil: "நாம் மார்க்கெட்டில் காய்கறி வாங்கலாம்.",
          english: "We can buy vegetables in the market.",
          transliteration: "Naam marketil kaaykari vaangalaam.",
        ),

        SentenceItem(
          tamil: "எனக்கு திராட்சை மிகவும் பிடிக்கும்.",
          english: "I like grapes very much.",
          transliteration: "Enakku thiraatchai migavum pidikkum.",
        ),

        SentenceItem(
          tamil: "என் அப்பா உருளைக்கிழங்கு சமைக்கிறார்.",
          english: "My father is cooking potato.",
          transliteration: "En appa urulaikizhangu samaikkirar.",
        ),

        SentenceItem(
          tamil: "நான் இன்று பப்பாளி சாப்பிடுகிறேன்.",
          english: "I am eating papaya today.",
          transliteration: "Naan indru pappali saappidugiren.",
        ),

        SentenceItem(
          tamil: "எங்கள் குடும்பம் ஆரஞ்சு ஜூஸ் குடிக்கிறது.",
          english: "Our family is drinking orange juice.",
          transliteration: "Engal kudumbam orange juice kudikkiradhu.",
        ),

      ],
    ),

  ],
);
