void main(List<String> args) {
  Ogrenci seray=Ogrenci(4, "seray");
  Ogrenci huseyin=Ogrenci.idsiz("hüseyin");
  Ogrenci oktay=Ogrenci.factoryKurucusu(-7, "oktay");
  print(oktay.id);
  print(oktay.isim);

}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("Varsayılan kurucu çalıştı");
  }

  Ogrenci.idsiz(this.isim) {
    print("İsimlendirilmiş kurucu çalıştı");
  }

  factory Ogrenci.factoryKurucusu(int id, String isim) {
    print("Factory kurucu çalıştı");
    if (id < 0) {
      return Ogrenci(5, isim);
    }
    else
    return Ogrenci(id,isim);
  }   // Normalde kurucu methodlarda return ifadesini kullanamıyoruz. Factory kurucusu ile return kullanabiliyoruz. 
}
