import 'dart:math';

class veriTabaniIslemleri {
  String _kullaniciAdi = "Seray";
  String _sifre = "123456";

  bool baglan() {
    if (_internetVarMi()) {
      if (_kullaniciAdi == "Seray" && _sifre == "123456") {
        return true;
      } else
        return false;
    } else
      return false;
  }

  bool _internetVarMi() {
    if (Random().nextBool()) {
      return true;
    } else
      return false;
  }
}
