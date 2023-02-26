/* 
NESNE YÖNELİMLİ PROGRAMLAMA

Sınıf: Kendi veri türlerimiz veya soyut lan taslaklara denir. Kendi içinde değişkenlere ve methodlara sahiptir. İstediğimiz bir nesnenin veya varlığın bilgisayar dillerinde tanımıdır.  

Nesne: Oluşturulan soyut ve taslak olan sınıflardan üretilen örneklere denir. Nesnelere, sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslar diyebiliriz.  

Sınıf eğer bir uzaktan kumandalı araba ise nesne onu kontrol ettiğimiz kumandadır.  
*/

void main(List<String> args) {
  Ogrenci seray =
      Ogrenci(); // bu şekilde kendi veri türümüzde tanımla yapıp bellekte yer ayrılması için Ogrenci(); şeklinde atamasını yapıyoruz
  seray.ogrAd = "seray";
  seray.ogrNo = 786;
  seray.aktifMi = true;

  Ogrenci huseyin = Ogrenci();

  //burada seray ve huseyin nesnelerimiz oldu
}

class Ogrenci {
  // sınıf adlarını büyük harfle başlatmak önemli
  //instance variables
  int ogrNo = 1;
  String ogrAd = "";
  bool aktifMi = true;
  //ya veri türünden sonra ? koyuyoruz ya da default değer atamalarını yapıyoruz
  void dersCalis() {
    print("Öğrenci ders çalışıyor.");
  }
  //aslında şu an Ogrenci adında kendi veri türümüzü oluşturduk
}
