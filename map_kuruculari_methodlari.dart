void main(List<String> args) {
  // Map Tanımlama

  Map<String, dynamic> map = Map();
  Map<String, dynamic> map2 = {};
  var map3 =
      {}; // önemli uyarı bunun içine tek bir ifade yazarsak sete dönüşür.

  // Map'de Veri Saklama

  map["id"] = 5;
  map["isim"] = "seray";
  map["renk"] = "pembe";

  map2 = {"isim": "seray", "id": 5, "renk": "pembe"};

  // Constructorlar

  // Map() en temel ve en çok kullanılandır.

  var yeniMap = Map.from({
    "değer": "yeni"
  }); // bunun içine hazır olan bir mapi de koyabiliriz veya kendimiz de yeni map yazabiliriz.
  print(yeniMap);

  var mapFromEntries = Map.fromEntries(map
      .entries); // var olan mapin kopyasını oluşturduk aslında. entries key-value çiftlerine denir.
  print(mapFromEntries);

  var liste = [9, 8, 7, 6];
  var mapFromIterable = Map.fromIterable(liste); // bir iterable değer ister.
  print(mapFromIterable); // burada key ve value değerleri aynı olacaktır. 
  // Bu methodu kullanarak key ve valuelara müdahale de edebiliriz.

  var mapFromIterable2=Map<String,String>.fromIterable(liste,
  key:(element){
    return "$element";
  },
  value:(element) {
    return "${element*2}";
  }
  );
  print(mapFromIterable2);  // valueları keylerin 2 katı yaptık.

  //map2.update(key, (value) => null)

  map2.update("id", (value) => 15); // value eski değeri temsil ediyor.
  print(map2);

  map2.update("yaş", (value) => 19, ifAbsent: () => 19); // ifAbsenti'i eğer yazdığımız key değeri mevcut değilse kullanıyoruz ve bu şekilde onu oluşturuyoruz.
  print(map2); 

  map2.putIfAbsent("soyisim", () => "esen"); // böyle bir key yoksa bu oluştur ve bu valueyu yazdır. Eğer olsaydı bu çalışmayacaktı. 
  print(map2);
}
