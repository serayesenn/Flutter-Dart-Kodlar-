void main(List<String> args) {
  print("İnternetten kişi verisi getirilecek.");
  kisiyleIlgiliIslemler();
  print("Başka işler yapılacak.");
  print("İşlem bitti");
}


void kisiyleIlgiliIslemler() async{
  String kisi=await   kisiVerisiniGetir();
  print(kisi.length);
}

Future <String> kisiVerisiniGetir(){
  return Future <String>.delayed(Duration(seconds: 5), (){
    return "Kişi adı: Seray, ID: 100";
      });
}