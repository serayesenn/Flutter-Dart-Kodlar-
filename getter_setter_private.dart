/*
Private değişken ve fonksiyonlar: Bir sınıftaki değişken ve metotları bazen erişime kapatmak isteyebiliriz. Bu durumlarda _ işareti ile bunları saklarız. 
 
getter metotlar: sınıf değişkenlerini okumak için kullanılan özel fonksiyonlardır. Bu metotların amacı özellikle private yani dış dünyanın erişimine kapatılmış değişkenlerin gerekli olduğunda okunmasını sağlamaktır.  

setter metotlar: sınıf değişkenlerine veri atamak için kullanılır. Bu metotların amacı özellikle private yani dış dünyanın erişimine kapatılan değişkenlere veri atamaktır. Ayrıca veri ataması yapılırken gerekli olan kontrollerin ve işlemlerin yapılması için kullanılır.   
*/

import 'musteri_classornek.dart';
import 'veritabani_classornek.dart'; // bu veritabani_islemleri.dart dosyasını bu dosya içinde kullanmamızı sağlar

void main(List<String> args) {
  Musteri m1 =Musteri();
  //m1.bilgileriYazdir();
  m1.musteriNoAta=988; // setter fonksiyonlarda () yazmamıza gerek yok, değişken gibi atamasını yapabiliyoruz.
  print(m1.musteriNoSoyle);

  /* Musteri m2 = Musteri(234);
  m2.bilgileriYazdir(); */



  veriTabaniIslemleri db = veriTabaniIslemleri();
  bool sonuc = db.baglan();

  if (sonuc) {
    print("Bağlandım");
  } else
    print("Bağlanamadım");
}

// Aynı dosya içinde private değişkenler çalışmaz, main içinden de erişilebilir. Bu yüzden genellikle bu classlar ayrı dosyalarda yazılır.
