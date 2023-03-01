class CemberDaire {
  double _yaricap = 1.0;
  double _pi = 3.14;

  CemberDaire(double yc) {
    _yariCapKontrol = yc;
  }

  void set _yariCapKontrol(double deger) {
    if (deger > 0) {
      _yaricap = deger;
    } else {
      _yaricap = 1.0;
    }
  }

  void CevreHesapla() {
    double cevre = 2 * _pi * _yaricap;
    print("Çevre: $cevre");
  }

  void AlanHesapla() {
    double alan = _pi * _yaricap * _yaricap;
    print("Alan: $alan");
  }
}
