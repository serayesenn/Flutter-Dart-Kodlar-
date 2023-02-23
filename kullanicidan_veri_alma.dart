import 'dart:io'; // stdin fonksiyonun çalışması için kütüphane

void main(List<String> args) {
  print("Adınızı giriniz:");
  String? isim = stdin.readLineSync(); // Kullanıcının null değer girme ihtimali de olduğu için ? kullandık.
  print("Girilen isim: $isim");

  print("Yaşınızı giriniz:");
  int? yas = int.parse(stdin.readLineSync()!); // ! koyarak null olmayacağını belirtiyoruz
  print("Girilen yaş: $yas");
}
