class Allergies {
  static Map<String, int> allergenMap = {
    'eggs': 1,
    'peanuts': 2,
    'shellfish': 4,
    'strawberries': 8,
    'tomatoes': 16,
    'chocolate': 32,
    'pollen': 64,
    'cats': 128
  };

  // is someone allergic to something
  bool allergicTo(String allergen, int score) {
    // return true if the allergen is found in the submitted value
    return (allergenMap[allergen] ?? 0) & score > 0;
  }

  // give back a list of allergens the person is allergic to
  List<String> list(int score) {
    List<String> allergens = [];
    // for each allergen in the allergenMap
    // check whether the corresponding value's bit is set
    // (eggs, peanuts, shellfish, strawberries, tomatoes, chocolate, pollen, cats)
    allergenMap.keys.forEach((String key) {
      if ((allergenMap[key] ?? 0) & score > 0) allergens.add(key);
    });
    return allergens;
  }
}
