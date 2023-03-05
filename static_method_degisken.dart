/*
Sınıflarımızda nesne üretmeden bazı değişkenlere ve methodlara erişmek isteyebiliriz. Burada karşımıza static kavramı çıkar.  

Static kullanarak nesne değil, sınıf değişkenleri ve methodları oluşturabiliriz.
Bir sınıfta tanımlanan method ve değişkenlere erişirken mutlaka nesne üretmemiz gerekirdi. Fakat biz bunları static olarak tanımlarsak artık nesne üretmeden bu deüerlere erişebilir ve kullanabiliriz. Artık onlar nesnelerin değil sınıfın method ve değişkenleridir.  

Ayrıca statik değişkenler kullanılana kadar değer almazlar, bellekte yer ayrılmaz.  
Statik metodların içinde this anahtar kelimesi kullanılmaz.  

Static metodlar içinden nesneye özgü alanlara erişilemezken, nesneye özgü metod içinden static değerlere erişilebilir.  
*/

void main(List<String> args) {
  Matematik m1 = Matematik(50, 20);
  m1.topla();
  m1.cikar();

  print(Matematik.pi);
  Matematik.sinifAdiniSoyle();
}

class Matematik {
  //instance variable
  int birinciSayi = 0;
  int ikinciSayi = 0;

  //class variable
  static double pi = 3.14;
  static void sinifAdiniSoyle() {
    print("Ben matematik sınıfıyım.");
  }

  Matematik(this.birinciSayi, this.ikinciSayi);

  void topla() {
    print("Toplam: ${birinciSayi + ikinciSayi}");
  }

  void cikar() {
    print("Fak: ${birinciSayi - ikinciSayi}");
  }
}
