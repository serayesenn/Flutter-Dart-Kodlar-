void main(List<String> args) {
  print("Program başladı.");
  Future.delayed(Duration(seconds: 0), () {
    print(
        "0 saniyelik işlem bitti."); // 0 saniye dahi ayarlansa önce diğerlerini yazdırır en son bu yani program bittiden sonra gelir
  });
  print("Program bitti.");

  Future<int> toplam = Future(() {
  int toplam = 0;
  for (int i = 0; i < 100000; i++) {
    toplam += i;
  } // bu şekilde duration vermek zorunda da değiliz. Bunun gibi uzun sürecek ve programın diğer kısmına engel olmasını istemediğimiz kod parçacıklarını bu şekilde future yapısı içinde tutabiliriz. Böylelikle programın diğer kısmı bundan etkilenmeyecektir.
  throw Exception("Toplam hesaplanamadı.");
  return toplam;
});

toplam.then((value) => print(value)).catchError((hata)=>print(hata));

var f2=Future.value("seray");

}


