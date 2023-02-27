/*
Farklı türde kurucu oluşturabiliriz.  
1. Default: Sınıf adının yanına () dediğimizde çalışan ve de sınıf adıyla aynı olan methoddur.  
    Ogrenci seray= new Ogrenci(); dediğimizde aslında default kurucu çalışır.  
    Default constructor, classın içinde eğer elle yazıp belirtmesek nile olan Ogrenci(){} şeklinde tanımlı boş bir methoddur.  
    İstersek bunu çeşitli durumlar için kullanabiliriz. Bu method nesne üretiminde ilk olarak çalışan methoddur.  
    Kurucu methodların geri dönüş tipi olmaz.  

2. Parametreli Kurucu Method: Aslında default constructorın parametre almış haline denir.  
    Ogrenci seray=Ogrenci("seray");

    Dart dilinde method overloading olmadığı için sadece ya default kurucu ya da parametreli kurucu olmalıdır.  

  3. Named: Sınıf içerisinde
  sinifAdi.methodAdi(){
    buraya kodlar gelir
  }
  istediğimiz sayıda isimlendirilmiş kurucu oluşturabiliriz.  
*/

void main(List<String> args) {
  Araba honda = Araba(2021, "Honda",
      true); // Bu çalışmaya başladığı an kurucu method da çalışıyor
  /*  honda.modelYili=2021;
  honda.marka="Honda";
  honda.otomatikMi=true; */
  honda.bilgileriSoyle();
  honda.yasHesapla();
  Araba ford = Araba(2022, "Ford",
      true); // default kurucu methodu çalıştırsaydık buraya parametre girmeyecektik, yorum satırındaki gibi girecektik
  ford.bilgileriSoyle();
  ford.yasHesapla();
  var bmw = Araba.markasizKurucuMethod(true, 2019);
  bmw.bilgileriSoyle();
  Araba citroen = Araba.markasizKurucuMethod(false, 2017);
  citroen.bilgileriSoyle();
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  /* Araba(){
    print("Kurucu method tetiklendi.");
  } */

  Araba(this.modelYili, this.marka, this.otomatikMi) {
    // Bu şekilde gösterim aşağıdaki gösterimin daha kısa yoludur ve genelde bu kullanılır
    print("Kurucu method tetiklendi.");
  }

  Araba.markasizKurucuMethod(this.otomatikMi, this.modelYili) {
    // bu şekilde özelleştirilmiş kurucular üretebiliriz. (named kurucu method)
    print("Markasız kurucu method tetiklendi.");
  }

  /* Araba(int modelYili, String marka, bool otomatikMi) {
    print("Kurucu method tetiklendi.");
    this.modelYili = modelYili;
    this.marka = marka;
    this.otomatikMi = otomatikMi;
    // Bu this sınıfın içinde tanımladığımız parametreleri işaret eder. sistemin kafası karışmasın diye bu şekilde kullanırız. Ya da daha basit bir şekilde kurucu methodun parametrelerini farklı isimlerle adlandırırız.
  } */

  void bilgileriSoyle() {
    print(
        "Arabanın model yılı: $modelYili, markası: $marka, otomatik mi: $otomatikMi");
  }

  void yasHesapla() {
    print(
        "Arabanın yaşı: ${2023 - modelYili!}"); // Buraya ! koymazsak hata veriyor çünkü modelYili'nin null olma ihtimali var. Bu şekilde ! koyarak null olma ihtimal olan parametrelerin null değilmiş gibi davranmalarını sağlıyoruz.
  }
}
