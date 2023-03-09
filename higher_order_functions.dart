/* 
Higher order functions: bir fonksiyonu parametre olarak alan veya geriye fonksiyon döndüren fonksiyonlardır.  
İkisi aynı anda da yapılabilir.  
*/

void main(List<String> args) {
  List<int> liste = [1, 2, 3];

  liste.forEach((element) {
    print("Element $element");
  });

  // foreach fonksiyonu herhangi bir parametre döndürmeyen ve int parametre alan bir fonksiyon bekler.

  liste.forEach(callback);  // callback yanına () açmayız çünkü çalıştırma işlemini foreach yapar. 

  kendiForEachYapim(liste, (int deger){
    print("Değer: $deger");
  });

}

void callback(int element){
  print("Element: $element");
}

void kendiForEachYapim(List<int> liste, Function callback){
  for(int i=0; i<liste.length; i++){
    callback(liste[i]);
  }
}