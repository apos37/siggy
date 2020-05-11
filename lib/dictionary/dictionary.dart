class Observation {
  String category;
  bool danger;
  String finding;
  String meaning;

  Observation({String c, bool d, String f, String m}) {
    category = c;
    danger = d;
    finding = f;
    meaning = m;
  }
}

class DictionaryProp {
  String category;
  String name;
  String instructions;
  String description;

  DictionaryProp({String c, String n, String i, String d}) {
    category = c;
    name = n;
    instructions = i;
    description = d;
  }
}
