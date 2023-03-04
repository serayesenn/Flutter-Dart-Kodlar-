void main(List<String> args) {
  Deneme huseyin = Deneme("Hüseyin", 20);
  Er seray = Er("seray", 19);
  huseyin.selamla();
  seray.selamla();
  seray.memleketDegistir("izmir");
}

// Alt sınıftan bir nesne ürettiğimizde ilk olarak üst sınıfın urucu methodu çalışır.

class Asker {
  String ad = " ";
  int yas = 0;
  String memleket = "Ankara";
  Asker(this.ad, this.yas) {
    print("Asker sınıfının kurucusu çalıştı.");
  }

  void selamla() {
    print("Merhaba adım $ad, yaşım $yas");
  }
}

class Er extends Asker {
  Er(String ad1, int yas1) : super(ad1, yas1) {
    // super methodunu üst classın kurucusunu tetiklemek için kullanıyoruz. üst classın kurucusu eğer parametre alıyorsa ve biz bunu yazmazsak hata verir.
    print("Er sınıfının kurucusu çalıştı.");
  }

  void memleketDegistir(String yeniMemleket) {
    super.memleket =
        yeniMemleket; // bu şekilde üst classta olan verilere erişebiliyoruz.
  }
}

class Deneme extends Er {
  Deneme(ad2, yas2) : super(ad2, yas2) {
    print("Deneme sınıfının kurucusu çalıştı.");
  }

  /*  @override
  void selamla() {
    // TODO: implement selamla
    super.selamla();
  } */ // burada da super'i kullanıyordu yani erişim için olarak düşün, tabii burada override ederek bu class için bu methodda değişiklikler yapabiliriz.
}
