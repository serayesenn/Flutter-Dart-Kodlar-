void main(List<String> args) {
  User user1 = User();
  var user2 = NormalUser();
  ReadOnlyUser user3 = ReadOnlyUser();
  AdminUser user4 = AdminUser();

  User user5 = NormalUser();
  User user6 =
      AdminUser(); // Bu duruma upcasting (yukarıya çevrim) denir. Tam tersi hata vermektedir.

  List<User> tumUserlar = [];
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  tumUserlar.add(user3);
  tumUserlar.add(user4);
// Bu şekilde kalıtım sayesinde farklı classlardaki objeleri bir arada tutabiliyoruz. Kalıtım kullanmasaydık her user türü için farklı bir liste oluşturmak zorunda kalacaktık.
  test(user1);
  test(user5);
}

void test(User kullanici) {
  kullanici
      .gririsYap(); // polimorfizm (çok biçimcilik): user gibi tek bir veri türü yolluyoruz ama girilen parametreye göre farklı türlere de giriyor
}

class User {
  String email = " ";
  String password = " ";

  void gririsYap() {
    print("Parent User giriş yaptı");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Arkadaş daveti gerçekleşti");
  }

  /* @override
  void gririsYap() {
    // TODO: implement gririsYap
    super.gririsYap();
  } */
  @override // Bu sınıfın üst sınıfında tanımlı fonksiyonu tekrar yazmamızı sağlar.
  void gririsYap() {
    print("Normal user giriş yaptı.");
  }
}

class AdminUser extends User {
  void tomlamKullaniciSayisiniGoster() {
    print("Toplam kullanıcı sayısı: 20");
  }

  @override
  void gririsYap() {
    print("Admin user giriş yaptı.");
  }
}

class ReadOnlyUser extends User {
  void adiniSoyle() {
    print("Ben sadece okuyabilirim");
  }

  @override
  void gririsYap() {
    print("Readonly user giriş yaptı.");
  }
}
