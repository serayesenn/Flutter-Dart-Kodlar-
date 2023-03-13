/*
Soru:  
Bir fonksiyon yazın, bu fonksiyon aldığı id parametresine göre bir kullanıcı getirsin. Bu işlem 2 saniye sonunda sonuçlanacaktır ve getirilen kişi bilgisi map olarak alınacaktır. Bu map yapısında username ve id bilgisi olması yeterlidir.  

Getirilen kişi bilgisindeki username değerini kullanarak kişinin kurslarını getiren vir fonksiyon yazın. Bu fonksiyon 4 saniye sürecektir ve username değerine ait olan kursları içinde kursun adları olan bir liste olarak döndürecektir.  

Son olarak da kurslar listesindeki ilk elemanı parametre olarak alan ve bu kursa ait bir yorumu döndüren bir fonksyion yazın. Bu fonksiyon 1 saniye sürecektir.  
*/

void main(List<String> args) {
  String username = " ";
  idyeGoreUserGetir(5).then((value) {
    print(value);
    username = value["username"];
    usernameGoreKurslariGetir(username).then((value) {
      print(value);
      String ilkKurs=value[0];
      kursunIlkYorumunuGeti(ilkKurs).then((value) => print(value));
    });
  });
}

Future<Map> idyeGoreUserGetir(int id) {
  print("$id idli kullanıcı getiriliyor.");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {"username": "seray", "id": id};
  });
}

Future<List> usernameGoreKurslariGetir(String username) {
  print("$username adlı kullanıcının kursları getiriliyor.");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ["kotlin", "flutter", "javascript"];
  });
}

Future<String> kursunIlkYorumunuGeti(String kursAdi) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "Kurs mükemmel";
  });
}
