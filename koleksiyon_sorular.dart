/*
1. SORU: Şehirleri tutan bir liste oluşturun, 4 tane şehir ekleyip sırasıyla ekrana yazdırın.  
2. SORU: Keyleri string, valueları dynamic olan bir map oluşturun. Bu map yapısında bilgisayarınızın işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadığı bilgisini tutun ve ekrana yazdırın.  
3. SORU: Herbir elemanında keyleri string, valueları dynamic map olan bir liste oluşturun. Bu listedeki herbir eleman il adını, ilçe sayısını, plaka kodunu tutsun. Sonrasında bu listeyi okunaklı bir şekilde yazdırın. 
Örnek: Listenin 1. elemanında bulunan il ankara, plaka kodu 06, ilçe sayısı 10
4. SORU: 5 elemanlı iki farklı liste oluşturun. Elemanlar 0-50'ye rastgele oluşturulsun. Bu elemanları tek bir listeye aktarın. Oluşan son listenin elemanlarının karelerini tutan set yapısı oluşturup ekrana yazdırın.  
5. Soru: Kullanıcıdan aldığınız integer pozitif sayıları bir listede tutan, kullanıcı 0 değerini girdiğinde girilen sayıların ortalamasını ekrana yazdırın.  
*/

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // 1. SORU

  List<String> sehirler = List.filled(4, "", growable: false);
  sehirler[0] =
      "ankara"; // sabit uzunluklu listelerde add değil index kullanılır
  sehirler[1] = "eskisehir";
  sehirler[2] = "istanbul";
  sehirler[3] = "izmir";
  for (String sehir in sehirler) {
    print(sehir);
  }

  print("************");

  // 2. SORU

  Map<String, dynamic> computer = {
    "çekirdek sayısı": 6,
    "ram miktarı": 16,
    "ssd var mı": true
  };

  for (dynamic element in computer.entries) {
    print("${element.key} - ${element.value}");
  }

  print("************");

  // 3. SORU 

  List<Map<String, dynamic>> iller = [];

  Map<String, dynamic> eklenecekSehir1 = Map<String, dynamic>();
  eklenecekSehir1["il_adi"] = "ankara";
  eklenecekSehir1["ilce_sayisi"] = 10;
  eklenecekSehir1["plaka_kodu"] = 6;

  Map<String, dynamic> eklenecekSehir2 = <String, dynamic>{};
  eklenecekSehir2["il_adi"] = "bursa";
  eklenecekSehir2["ilce_sayisi"] = 6;
  eklenecekSehir2["plaka_kodu"] = 16;

  var eklenecekSehir3 = <String, dynamic>{};
  eklenecekSehir3["il_adi"] = "istanbul";
  eklenecekSehir3["ilce_sayisi"] = 20;
  eklenecekSehir3["plaka_kodu"] = 34;

  iller.add(eklenecekSehir1);
  iller.add(eklenecekSehir2);
  iller.add(eklenecekSehir3);

  iller.add({
    "il_adi": "izmir",
    "ilce_sayisi": 15,
    "plaka_kodu": 35
    // Bu şekilde de listeye map eklemesi yapabiliriz direkt olarak ama diğerlerinde bağımsız mapler oluşturduğumuz için fonksiyonlar aracılığı ile üzerlerinde işlemler yapabilirken burada yapamayız.
  });

  //print(iller);

  /* print(iller[0]);
  print(iller[2]["ilce_sayisi"]); */

  for(int w=0;w<iller.length;w++){
    var oankiMapYapisi=iller[w];
    print("Listenin ${w+1}. elemanında bulunan il adı: ${oankiMapYapisi["il_adi]} ilçe sayısı: ${oankiMapYapisi["ilce_sayisi]}  plaka kodu: ${oankiMapYapisi["plaka_kodu]} ");
  }
  }