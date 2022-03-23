import 'dart:io';

void main(List<String> arguments){
  int kodeBarang,jumlahBarang;
  String namaBarang,caraBeli,cobaLagi;
  double hargaBarang , totalHarga , diskon ,totalBayar;
  while (true){
    stdout.writeln('===Latihan Kedua====');
    stdout.write('Kode Barang\t :');
    kodeBarang = int.parse(stdin.readLineSync()!);
    stdout.write('Jumlah Barang\t :');
    jumlahBarang = int.parse(stdin.readLineSync().toString());
    print('');
    stdout.write('Cara Beli [T/K]\t : ');
    caraBeli = stdin.readLineSync().toString();

    if(kodeBarang == 001){
      namaBarang = 'AQUA';
      hargaBarang = 10000;
    } else if (kodeBarang == 002){
      namaBarang = 'Ades';
      hargaBarang =  15000;
    }else if (kodeBarang == 003){
      namaBarang = 'Cleo';
      hargaBarang = 5000;
    }else if (kodeBarang ==004){
      namaBarang = 'Indomart';
      hargaBarang = 6000;
    }else {
      namaBarang = '-';
      hargaBarang = 0;
    }

    totalHarga = hargaBarang * jumlahBarang;
    if (caraBeli.toUpperCase() == 'T'){
      diskon = 2/100 * totalHarga;
    }else{
      diskon = 0;
    }

    totalBayar = totalHarga = diskon;
    print('');
    print ('====NOTA====');
    print('Nama Barang \t : $namaBarang \n Harga Barang \t :$hargaBarang');
    print('Total Harga \t :' + totalHarga.toString());
    print('Diskon\t \t : ' +diskon.toString());
    print('Total Bayar \t : ' +totalBayar.toString());

    print('');
    stdout.write('Apakah akan mencoba lagi[Y/T] : ');
    cobaLagi = stdin.readLineSync().toString();
    if (cobaLagi != 'Y' && cobaLagi != 'y'){
      break;
  }


  }
}