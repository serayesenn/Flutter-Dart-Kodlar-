void main(List<String> args) {
  Kisi seray = Kisi("Seray", 19);
  seray.kendiniTanit();

  Calisan huseyin = Calisan("Hüseyin", 20, 50000);
  huseyin.kendiniTanit();
}

class Kisi {
  String isim;
  int yas;
  Kisi(this.isim, this.yas);

  void kendiniTanit() {
    print("Benim adım $isim, yaşım $yas");
  }
}

class Calisan extends Kisi {
  int maas;
  Calisan(String name, int age, this.maas) : super(name, age);

  @override
  void kendiniTanit() {
    super.kendiniTanit();
    print("Maaşım $maas");
  }
}
