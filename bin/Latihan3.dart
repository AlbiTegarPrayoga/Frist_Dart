import 'dart:io';
import 'lingkaran.dart';
import 'silinder.dart';

void main(List<String> arguments) {
  double jarijari;
  double tinggi;
  String lagi;

  while (true) {
    print('========Rumus Lingkaran dan Silinder=======');

    stdout.write('Jari-Jari :');
    jarijari = double.parse(stdin.readLineSync().toString());

    stdout.write('Tinggi :');
    tinggi = double.parse(stdin.readLineSync().toString());

    Lingkaran lingkaran = Lingkaran(jarijari);
    print('Luas Lingkaran :' + lingkaran.luaslingkaran().toString());
    print('Keliling Lingkaran : ' + lingkaran.kelilinglingkaran().toString());
    print('');

    Silinder silinder = Silinder(tinggi, jarijari);
    print('Luas Satu Tutup Tabung :' + silinder.luaslingkaran().toString());
    print('Luas Permukaan Tabung : ' + silinder.luasPermukaanTabung().toString());
    print('Luas Selimut Tabung : ' + silinder.luasSelimutTabung().toString());
    print('Isi Tabung :' + silinder.isiTabung().toString());
    print('');

    stdout.write('Apakahh anda akan mencoba lagi? :');
    lagi = stdin.readLineSync().toString();

    if (lagi.toUpperCase() == 'T'){
      break;
    }
  }
}
