/*
4. SORU: 5 elemanlı iki farklı liste oluşturun. Elemanlar 0-50'ye rastgele oluşturulsun. Bu elemanları tek bir listeye aktarın. Oluşan son listenin elemanlarının karelerini tutan set yapısı oluşturup ekrana yazdırın.  
5. Soru: Kullanıcıdan aldığınız integer pozitif sayıları bir listede tutan, kullanıcı -1 değerini girdiğinde girilen sayıların ortalamasını ekrana yazdırın. 
*/
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // 4. Soru

  List<int> liste1 = List.filled(5, 0);
  var liste2 = List<int>.filled(5, 0);
  List<int> sonListe = <int>[];
  Set<int> setYapisi = <int>{};

  for (int i = 0; i < 5; i++) {
    liste1[i] = Random().nextInt(50);
    liste2[i] = Random().nextInt(50);
  }

  sonListe = [...liste1, ...liste2];

  for (int temp in sonListe) {
    setYapisi.add(temp * temp);
  }

  print(sonListe);
  print(setYapisi);

  // 5. Soru

  int girilenNot = 0;
  List<int> girilenNotlar = <int>[];

  do {
    print("Lütfen notunuzu giriniz, çıkış için -1 tuşlayınız.");
    girilenNot = int.parse(stdin.readLineSync()!);
    if (girilenNot != -1) { 
      girilenNotlar.add(girilenNot); // -1 tuşlanmadığı sürece girilen notlar listesine ekleme yapar
    }
  } while (girilenNot != -1);

  double ortalama = listeninOrtlamasiniBul(girilenNotlar);
  print("Notların ortalaması: $ortalama");
}

double listeninOrtlamasiniBul(List<int> liste) {  // paramtere olarak liste alır, listedeki elemanları oplam adındaki değişkende toplar
  int toplam = 0;
  for (int i = 0; i < liste.length; i++) {
    toplam += liste[i];
  }
  return toplam / liste.length;   // ortalamayı returnler
}
