import 'dart:io';

void main(List<String> arguments){
  String kodeBarang , namaBarang ,caraBeli,cobalagi;
  double jumlahBarang,hargaBarang, totalHarga,diskon,totalBayar;
  while (true){
    stdout.writeln('Latihan Dart');
    stdout.write('Kode Barang :');
    kodeBarang = (stdin.readLineSync().toString());
    stdout.write('Jumlah Barang :');
    jumlahBarang = double.parse(stdin.readLineSync().toString());
    stdout.write('Cara Beli [T/K]');
    caraBeli = stdin.readLineSync().toString();

    if (kodeBarang == 'SPT') {
      namaBarang = 'Sepatu';
      hargaBarang = 200000;
    }else if (kodeBarang == 'SND'){
      namaBarang = 'Sandal';
      hargaBarang = 100000;
    }else if (kodeBarang == 'TST'){
      namaBarang = 'T-Shirt';
      hargaBarang = 150000;
    }else if (kodeBarang == 'TOP'){
      namaBarang = 'Topi';
      hargaBarang = 50000;
    }else {
      namaBarang = '-';
      hargaBarang = 0;
    }
    totalHarga = hargaBarang*jumlahBarang;
    if(caraBeli.toUpperCase()== 'T'){
      diskon = 10/100*totalHarga;
    }else{
      diskon = 0;
    }
    totalBayar = totalHarga-diskon;
    print('Nama Barang : $namaBarang \n Harga Barang : $hargaBarang');
    print('Total Harga : ' +totalHarga.toString());
    print('Diskon : ' +diskon.toString());
    print('Total Bayar : ' +totalBayar.toString());
    print('');

    stdout.write('Apakah akan mencoba lagi [Y/T] :');
    cobalagi = stdin.readLineSync().toString();
    if(cobalagi!='Y'&&cobalagi!='y'){
      break;
    }
  }
}