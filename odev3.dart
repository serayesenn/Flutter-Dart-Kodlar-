/* 
1. SORU: CemberDaire isimli sınıf oluşturun. Bu sınıfın yarışap alan kurucusu olmalı. Ayrıca çevre ve alanını hesaplayan metotlar olmalı. (Pi sayısı = 3.14)

2. SORU: Ogrenci isimli sınıf oluşturun. Bu sınıfta öğrencinin idsi ve not değeri tutulmalı. 5 elemanlı bir listede id ve not değerlerini rastgele oluşturarak bu öğrencileri saklayın ve bu öğrencileri yazdıran metotu yazın.  
*/

import 'dart:math';

import 'odev3_class1.dart';
import 'odev3_class2.dart';

void main(List<String> args) {
  CemberDaire daire = CemberDaire(0);
  daire.CevreHesapla();
  daire.AlanHesapla();

  //Ogrenci ogr1 = Ogrenci(id: 5, notDegeri: 10);
  
  int toplam = 0;
  List<Ogrenci> tumOgrenciler = List.filled(5, Ogrenci());
  ogrenciListesiniDoldur(tumOgrenciler);
  for (Ogrenci temp in tumOgrenciler) {
    print(temp);
    toplam += temp.notDegeri;
  }
  double ortalama = toplam / tumOgrenciler.length;
  print("Öğrencilerin not ortalaması: $ortalama");
}

void ogrenciListesiniDoldur(List<Ogrenci> liste) {
  for (int i = 0; i < liste.length; i++) {
    liste[i] =
        Ogrenci(id: Random().nextInt(1000), notDegeri: Random().nextInt(100));
  }
}
