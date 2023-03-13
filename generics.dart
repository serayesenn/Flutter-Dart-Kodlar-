/*
*Dart optionally typed bir dildir. Yani veri tiplerini belirtmek isteğe bağlıdır.  
*Sürekli kullanılan koleksiyon yapıları (liste, map, set) varsayılan olarak heterojendir. Yani aynı koleksiyon yapısında farklı türde verileri saklayabilirsiniz. Ama yapmalı mısınız?

*Generic tipler sayesinde bir yapıda hangi tür verilerin olacağını söyleriz. Böylece bu yapılar ype-safe olur, compile timeda hatalı veri girişi tespit edilir ve bize hatamız söylenir. Böylece runtimeda çıkabilecek hataların önüne geçilir.  

*Generic tipler <> içinde belirtilir. List<String> ifadesi bu listede sadece string veriler olacağı anlamı taşır. Bu listeye String dışında bir veri eklenirse daha programı çalıştırmadan hata alırız ve düzeltmemiz gerekir. Böylece daha güvenle kod yazmış oluruz.  

*Genericler dartta bulunan çoğu yapıda zaten vardır. List, map, set, Future, Stream gibi...  
Kendi oluşturduğumuz sınıflarda ve metotlarda da genericleri uygulayabiliriz. Böylece hem daha güvenli kod yazmış oluruz hem de benzer amaçları gerçekleştiren kdo yapılarını tek bir yapıda toplayabiliriz.  
*/

import 'dart:collection';

void main(List<String> args) {
  List<String> liste=[];
  liste.add("seray");
  liste.add("huseyin");
  yazdir(liste);
}

void yazdir(List liste){
  print(liste[1].length);
}

// List<E> -> Element
// Map<K> -> Key
// Map<K, V> -> Value
// R -> Methodların return tipleri için
// Ogrenci<T extends Insan> -> buraya yazılacak veri türü mutlaka Insan sınıfının bir alt sınıfı olmalı
