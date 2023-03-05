void main(List<String> args) {
  VeriTabani db = OracleDB();  // Veritabanında değişiklik yapacağımız zaman sadece burayı FirebaseDB(); olarak değiştiriyoruz ve uğraşmamıza gerek kalmıyor bu şekilde.
  db.userDelete();
  db.userSave();

  userGuncelle(db);
}

void userGuncelle(VeriTabani veritabani) {
  veritabani.userUpdate();
}

abstract class VeriTabani {
  void userSave();
  void userUpdate();
  void userDelete();
}

class OracleDB extends VeriTabani {
  @override
  void userDelete() {
    print("Oracle DB'den kullanıcı silindi");
  }

  @override
  void userSave() {
    print("Oracle DB'ye kullanıcı kaydedildi.");
  }

  @override
  void userUpdate() {
    print("Oracle DB'deki kullanıcı güncellendi.");
  }
}

class FirebaseDB extends VeriTabani {
  @override
  void userDelete() {
    print("Firebase DB'den kullanıcı silindi");
  }

  @override
  void userSave() {
    print("Firebase DB'ye kullanıcı kaydedildi.");
  }

  @override
  void userUpdate() {
    print("Firebase DB'deki kullanıcı güncellendi.");
  }
}
