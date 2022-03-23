class Lingkaran{
  double _jarijari = 0;
  Lingkaran(this. _jarijari);
  double get jarijari => _jarijari;
  set jarijari(double value){
    _jarijari = value;
  }

  double luaslingkaran(){
    return 22/7 * _jarijari * _jarijari;
  }

  double kelilinglingkaran(){
    return 2*22/7 *jarijari;
  }
}