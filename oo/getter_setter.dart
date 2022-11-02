class Car  {
  //com _ se torna privado nao consigo acessar em outro arquivo
  late int _year;

  int get  year {
     return  this._year;
  }

  void  set year(int year) {
    if (year < 2000) {
       this._year = 2000;
    }else{
      this._year = year;
    }
  }

}