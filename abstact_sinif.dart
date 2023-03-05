/*
Abstract soyut sınıf: Sınıflar arasında soyutlama yapmak için kullanılır.  
Abstract sınıflardan nesne üretilemez, abstract sınıflarda normal ve abstract methodlar olur.  
Abstract methodlar alt sınıflara override edilmek zorundadır.  
Bir sınıfta bir tane abstract method varsa o sınıf mutlaka abstract tanımlanmalıdır.  
*/

import 'dart:io';

void main(List<String> args) {
  Kare k1 = Kare(4);
  Sekil k2 = Kare(
      6); // Sekil() şeklinde bir nesne oluşturamıyoruz abstract sınıf olduğu için fakat Kare() şeklinde oluşturabiliriz.
  Dikdortgen d1=Dikdortgen(3,5);
  print("1. karenin alanı: ${k1.alanHesapla()}");
  print("2. karenin alanı: ${k2.alanHesapla()}");
  print("Dikdörtgenin alanı: ${d1.alanHesapla()}");

  List<Kare> tumKareler = [];
  List<Dikdortgen> tumDikdortgenler = [];
  List<Sekil> tumSekiller = [];
  tumSekiller.add(k1);
  tumSekiller.add(k2);

 test(k1);
 test(d1);
}

void test(Sekil sekil){  // tek bir fonksiyon 2 farklı türdeki veriyi alıp işlem yaptırabiliyor
  sekil.selamla();  
}


abstract class Sekil {
  double alanHesapla();
  double cevreHesapla();
  void selamla() {
    print("Ben şekil sınıfındasım.");
  }
}

class Kare extends Sekil {
  int kenar;

  Kare(this.kenar);

  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }

  @override
  void selamla() {
    print("Ben kareyim.");
  }
}

class Dikdortgen extends Sekil {
  int kisaKenar;
  int uzunKenar;

  Dikdortgen(this.kisaKenar, this.uzunKenar);

  @override
  double alanHesapla() {
    return uzunKenar * kisaKenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return 2 * (kisaKenar + uzunKenar).toDouble();
  }
  
  @override
  void selamla() {
    print("Ben dikdörtgenim.");
  }
}
