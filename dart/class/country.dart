class Country {
  //Property
  var name;
  var language;
  var _animal; // ตัวแปร Private
  var color = "แดงขาวน้ำเงิน";
  static var city = "Wachington D.C.";

// Constructor
// Country(String name){
//   this.name = name;
// }

  // Constructor แบบสั้น
  Country(this.name, this.language);

  // Constructor Name
  // Country.language(String name, String Language) : this("USA", Language);

  // Method
  String showLanguage() => this.language;

  // Function Setter
  void setAnimal(String animal) => this._animal = animal;

  // Function Getter
  String getAnimal() => this._animal;

  static void callHello() => print("Hello");

  void showPeople() {
    print("คนในประเทศ $name มี 328.2 ล้านคน");
  }
}
