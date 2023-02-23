/* 
ÖRNEK 1: İki notu girilen öğrencinin ortalamasını bularak sonucu ekranda gösteren algoritmayı yapın. 

ÖRNEK 2: Fiyatı girilen ürüne %18 kdv ekleyerek son fiyatı hesaplayan algoritmayı yazınız.
*/

import 'dart:io';

void main(List<String> args) {
  // ÖRNEK 1
  int not1;
  int not2;
  double ort;

  print("1. notu giriniz:");
  not1 = int.parse(stdin.readLineSync()!);
  print("2. notu giriniz:");
  not2 = int.parse(stdin.readLineSync()!);

  ort = (not1 + not2) / 2;
  print("Ortalama: $ort");

  print("*******************************");

  // ÖRNEK 2

  int fiyat;
  double sonFiyat;
  print("Fiyatı giriniz:");

  fiyat = int.parse(stdin.readLineSync()!);

  sonFiyat = (fiyat * 18) / 100 + fiyat;

  print("Son fiyat: $sonFiyat");
}
