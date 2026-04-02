import '../../models/beginner_subsection.dart';
import '../../models/word_item.dart';
import '../../models/sentence_item.dart';
import '../../models/beginner_section.dart';

final BeginnerSubsection placesAndLocationsSubsection =
    BeginnerSubsection(
  parentSectionTitle: "Places & Locations",
  title: "Places & Locations",
  words: [

    // 🔹 Common Places
    WordItem(tamil: "வீடு", english: "House", transliteration: "Veedu"),
    WordItem(tamil: "பள்ளி", english: "School", transliteration: "Palli"),
    WordItem(tamil: "கல்லூரி", english: "College", transliteration: "Kalloori"),
    WordItem(tamil: "அலுவலகம்", english: "Office", transliteration: "Aluvalagam"),
    WordItem(tamil: "மருத்துவமனை", english: "Hospital", transliteration: "Maruthuvamanai"),
    WordItem(tamil: "சந்தை", english: "Market", transliteration: "Sandhai"),
    WordItem(tamil: "கோவில்", english: "Temple", transliteration: "Kovil"),
    WordItem(tamil: "பேருந்து நிலையம்", english: "Bus Stand", transliteration: "Perundhu Nilayam"),
    WordItem(tamil: "ரயில் நிலையம்", english: "Railway Station", transliteration: "Rayil Nilayam"),
    WordItem(tamil: "வங்கி", english: "Bank", transliteration: "Vangi"),
    WordItem(tamil: "கடை", english: "Shop", transliteration: "Kadai"),
    WordItem(tamil: "பூங்கா", english: "Park", transliteration: "Poongaa"),
    WordItem(tamil: "சாலை", english: "Road", transliteration: "Saalai"),
    WordItem(tamil: "நகரம்", english: "City", transliteration: "Nagaram"),
    WordItem(tamil: "கிராமம்", english: "Village", transliteration: "Graamam"),
    WordItem(tamil: "விமான நிலையம்", english: "Airport", transliteration: "Vimaan Nilayam"),
    WordItem(tamil: "ஹோட்டல்", english: "Hotel", transliteration: "Hotel"),
    WordItem(tamil: "உணவகம்", english: "Restaurant", transliteration: "Unavagam"),

    // 🔹 Direction & Position Words
    WordItem(tamil: "அருகில்", english: "Near", transliteration: "Arugil"),
    WordItem(tamil: "தொலைவில்", english: "Far", transliteration: "Tholaivil"),
    WordItem(tamil: "முன்", english: "In front", transliteration: "Mun"),
    WordItem(tamil: "பின்", english: "Behind", transliteration: "Pin"),
    WordItem(tamil: "மேல்", english: "Above", transliteration: "Mel"),
    WordItem(tamil: "கீழ்", english: "Below", transliteration: "Keezh"),
    WordItem(tamil: "உள்ளே", english: "Inside", transliteration: "Ulle"),
    WordItem(tamil: "வெளியே", english: "Outside", transliteration: "VeliyE"),
    WordItem(tamil: "இடது", english: "Left", transliteration: "Idathu"),
    WordItem(tamil: "வலம்", english: "Right", transliteration: "Valam"),
    WordItem(tamil: "நடுவில்", english: "In the middle", transliteration: "Naduvil"),
  ],

  sentences: [

    SentenceItem(
      tamil: "என் வீடு பள்ளிக்கு அருகில் உள்ளது.",
      english: "My house is near the school.",
      transliteration: "En veedu pallikku arugil ulladhu.",
    ),
    SentenceItem(
      tamil: "நான் அலுவலகத்திற்கு செல்கிறேன்.",
      english: "I am going to the office.",
      transliteration: "Naan aluvalagathirkku selgiren.",
    ),
    SentenceItem(
      tamil: "மருத்துவமனை நகரத்தில் உள்ளது.",
      english: "The hospital is in the city.",
      transliteration: "Maruthuvamanai nagarathil ulladhu.",
    ),
    SentenceItem(
      tamil: "சந்தை கோவிலுக்கு அருகில் உள்ளது.",
      english: "The market is near the temple.",
      transliteration: "Sandhai kovilukku arugil ulladhu.",
    ),
    SentenceItem(
      tamil: "அவன் பூங்காவில் விளையாடுகிறான்.",
      english: "He is playing in the park.",
      transliteration: "Avan poongavil vilaiyaadugiraan.",
    ),
    SentenceItem(
      tamil: "பேருந்து நிலையம் சாலைக்கு அருகில் உள்ளது.",
      english: "The bus stand is near the road.",
      transliteration: "Perundhu nilaiyam saalaikku arugil ulladhu.",
    ),
    SentenceItem(
      tamil: "வங்கி கடையின் பின் உள்ளது.",
      english: "The bank is behind the shop.",
      transliteration: "Vangi kadaiyin pin ulladhu.",
    ),
    SentenceItem(
      tamil: "நான் கிராமத்தில் வசிக்கிறேன்.",
      english: "I live in a village.",
      transliteration: "Naan graamathil vasikkiren.",
    ),
    SentenceItem(
      tamil: "ரயில் நிலையம் தொலைவில் உள்ளது.",
      english: "The railway station is far away.",
      transliteration: "Rayil nilaiyam tholaivil ulladhu.",
    ),
    SentenceItem(
      tamil: "கடை வீட்டின் முன் உள்ளது.",
      english: "The shop is in front of the house.",
      transliteration: "Kadai veettin mun ulladhu.",
    ),

    SentenceItem(
      tamil: "நான் இன்று பள்ளிக்கு மகிழ்ச்சியாக செல்கிறேன்.",
      english: "I am happily going to school today.",
      transliteration: "Naan indru pallikku magizhchiyaga selgiren.",
    ),
    SentenceItem(
      tamil: "என் அண்ணன் நகரத்தில் வேலை செய்கிறார்.",
      english: "My elder brother works in the city.",
      transliteration: "En annan nagarathil velai seigiraar.",
    ),
    SentenceItem(
      tamil: "நாம் மாலை சந்தைக்கு செல்கிறோம்.",
      english: "We go to the market in the evening.",
      transliteration: "Naam maalai sandhaikku selgiroam.",
    ),
    SentenceItem(
      tamil: "என் அம்மா மருத்துவமனைக்கு சென்றார்.",
      english: "My mother went to the hospital.",
      transliteration: "En amma maruthuvamanaiyukku sendraar.",
    ),
    SentenceItem(
      tamil: "நான் பூங்காவில் நண்பர்களுடன் விளையாடுகிறேன்.",
      english: "I play in the park with friends.",
      transliteration: "Naan poongavil nanbargaludan vilaiyaadugiren.",
    ),
  ],
);

final BeginnerSection placesAndLocationsSection =
    BeginnerSection(
  title: "Places & Locations",
  subsections: [
    placesAndLocationsSubsection,
  ],
);
