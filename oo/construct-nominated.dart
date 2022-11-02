main() {

  Date date = Date.withYear(year: 2023);
  print(date.formatedDate()); // vai printar 3/10/2023
}

class Date {
  late int  day;
  late int month;
  late int year;

  //flutter tem posibilidade determinar construtores nomeados
  //neste caso preciso determinar um valor padrao
  Date.withYear({this.year = 2010,this.month = 10,this.day = 03});
  Date.withDay(this.day) {
     month = 10;
     year = 2024;
  }

  String formatedDate() {
    return "$day/$month/$year";
  }

}


