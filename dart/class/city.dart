import 'country.dart';
import 'problem.dart';

class City extends Country with Problem {
  var city;

  City(this.city) : super("USA", "English");

  void callSuper() {
    super.showPeople();
    super.color;
  }

  @override
  void showPeople() {
    print("จำนวนคนในเมือง $city มี 3.967 คน");
  }
}
