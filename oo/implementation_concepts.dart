import "getter_setter.dart";

main () {

  Car carOld = Car();
  carOld.year = 1990;

  print(carOld.year); //vai printar 2020

  Car carNew = Car();
  carNew.year = 2028;
  print(carNew.year); // vai printar 2028

}