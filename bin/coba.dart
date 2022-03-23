import 'dart:io';

void main(){
  String? s = stdin.readLineSync();
  if (s != null){
    if (int.tryParse(s) != null){
      int n = int.parse(s);
      print('int $n');
    }else if (double.tryParse(s) != null){
      double d = double.parse(s);
      print('double $d');
    }else{
      print('string $s');
    }
  }
}