enum Genders{
  male, 
  female, 
  undefined,
}

extension GenderName on Genders {
  String get text => this == Genders.male ? "Erkek" : this == Genders.female ? "Kadın" : "Belirtmek İstemiyorum";
}