main() {

  final dayBuy = Data();
  dayBuy.day = 10;
  dayBuy.month = 08;
  dayBuy.year = 2020;


  print("Este e o dia da compra =>  ${dayBuy.day}/${dayBuy.month}/${dayBuy.year}");

  final newDayBuy = Data();
  newDayBuy.day = 15;
  newDayBuy.month = 11;
  newDayBuy.year = 2021;

  print("Acionado metodo formatedDate ${newDayBuy.formatedDate()}");

}

//preciso de um construtor para iniciar caso acontrario preciso iniar com ?
class Data {
  int? day;
  int? year;
  int? month;

  String formatedDate() {
    return "$day/$month/$year";
  }

}





