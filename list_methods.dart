void main(List<String> args) {
  
  List<int>sayilar=[10,5,4,3,1];

  if(sayilar.isNotEmpty){
    print(sayilar.first);
    print(sayilar.last);
  }

  print("Liste boş mu: "+sayilar.isEmpty.toString());
  
  print("Eleman sayısı: ${sayilar.length}");

  print("Listenin tersten yazımı: ${sayilar.reversed}");

  sayilar.add(23);
  print(sayilar);
  sayilar.remove(3); // ilk gördüğü 3'ü çıkarır.
  print(sayilar);
  sayilar.removeAt(2); // girdiğimiz indexteki elemanı siler.
  print(sayilar);

  // Sabit boyutlu dizilerede remove vb fonksiyonlar çalışmaz.

  // sayilar.clear(); -> tüm listeyi temizler

  print(sayilar.contains(9)); // Liste girdiğimiz elemanı içeriyor mu?

  print(sayilar.elementAt(2)); // Girdiğimiz indexteki elemanı yazdırır.

  print(sayilar.indexOf(10)); // Girdiğimiz elemanın kaçıncı indexte olduğunu gösterir.

  sayilar.shuffle(); // Rastgele elemanların yerlerini değiştirir.

  print(sayilar);
}