import 'dart:io';

void main(List<String> args) {
 print("Anne çocuğu ekmek almaya yollar."); 

 Future<String> sonuc=uzunSurenIslem();
 sonuc.then(((String value) => print(value))).catchError((hata){
  print(hata);
 }).whenComplete(() => print("Ekmek alma işlemi bitti."));

 print("Peynir, zeytin hazırlanır.");
 print("Kahvaltı hazır!");
}


Future<String> uzunSurenIslem(){
  print("Çocuk ekmek almak için evden çıkar.");
  Future<String> sonuc=Future.delayed(Duration(seconds: 5), () {
    return "Çocuk ekmekle eve girer.";
    throw Exception("Bakkalda ekmek kalmamış");
  });
  return sonuc;
}


/* void uzunSurenIslem(){
  
print("Çocuk ekmek almak için evden çıkar.");


// sleep(Duration(seconds: 5)); bu app yaparken vs herhangi bir donma olması durumunda yetersiz kaldığı için kullanılmaz. Bunların önüne geçmek için asenkron yapılar kullanılır.
// print("Çocuk ekmekle eve girer.");

/* Senkronda çıktı:  
Anne çocuğu ekmek almaya yollar.
Çocuk ekmek almak için evden çıkar.
Çocuk ekmekle eve girer.
Peynir, zeytin hazırlanır.
Kahvaltı hazır!
*/

//asenkron: 

Future.delayed(Duration(seconds: 5), (){
  print("Çocuk ekmekle eve girer.");
});

/* Asenkronda çıktı:
Anne çocuğu ekmek almaya yollar.
Çocuk ekmek almak için evden çıkar.
Peynir, zeytin hazırlanır.
Kahvaltı hazır!
Çocuk ekmekle eve girer.
*/
 
}
*/