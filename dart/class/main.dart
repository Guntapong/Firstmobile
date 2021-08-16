import 'country.dart';
import 'city.dart';

void main() {
  City item = City("Los Angelis");
  print(item.city);
  print(item.color);
  print(item.name);
  print(item.language);

  item.callSuper();
  item.showPeople();
  item.showProblem();

  // var item = new Country.language("USA","English");
  // print("ประเทศ : " + item.name);
  // print("ภาษาหลัก : " + item.showLanguage());
  // item.setAnimal("...");
  // print("สัตว์ประจำชาติ : " + item.getAnimal());
  // print("เมืองหลวง : " + Country.city);

  // Country.callHello();
}
