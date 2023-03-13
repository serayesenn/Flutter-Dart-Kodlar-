void main(List<String> args) {
  print("Anne çocuğu ekmek almaya yollar.");
  print("Çocuk ekmek almak için evden çıkar.");

  uzunSurenIslem().then((value)=>print(value)).catchError((hata)=>print(hata)).whenComplete(()=>print("Ekmek alma işlemi bitti."));

}


Future <String> uzunSurenIslem(){
  return Future<String>.delayed(Duration(seconds: 5), (){
    return "Çocuk ekmekle eve girer.";
  });
}