import 'lingkaran.dart';

class Silinder extends Lingkaran{
  double _tinggi =0;
  Silinder(this._tinggi, this_jarijari) : super(this_jarijari);

  double get tinggi => _tinggi;
  set tinggi(double value){
    _tinggi = value;
  }

  double luasPermukaanTabung(){
    return 2*luaslingkaran() + kelilinglingkaran()*tinggi;
  }

  double luasSelimutTabung(){
    return kelilinglingkaran() *tinggi;
  }

  double isiTabung(){
    return luaslingkaran()*tinggi;
  }
}