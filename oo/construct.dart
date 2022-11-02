main() {

  final dayOne = Date(20, 10, 2020);
  print(dayOne.formatedDate());

}

class Date {
 late int  day;
 late int month;
 late int year;

 //maneira de iniciar um construtor
 //nao podemos ter overload de construtores como em Java
 //  Date(int day,int month,int year) {
 //    this.day = day;
 //    this.month = month;
 //    this.year = year;
 //  }

 // //segunda maneira de iniciar um construtor
 // Date(this.day,this.year,this.month);

 //construtor opcional
 Date([this.day = 10,this.month = 2,this.year = 2020]);

  String formatedDate() {
    return "$day/$month/$year";
  }


}