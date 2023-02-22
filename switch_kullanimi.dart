/* Not: Switch-Case'lerde veritipi olarak sadece integer ve string kullanılır. Diğerleri kullanılamaz. */
void main(List<String> args) {

  String harfNotu = "DD";

  switch (harfNotu) {
    case "AA":
      print("Notunuz 100 ile 90 arasındadır");
      break;

    case "BA":
      print("Notunuz 90 ile 80 arasındadır");
      break;

    case "BB":
      print("Notunuz 80 ile 70 arasındadır");
      break;

    case "CC":
      print("Notunuz 70 ile 60 arasındadır");
      break;

    case "DC":
      print("Notunuz 60 ile 50 arasındadır");
      break;
    case "DD":
      print("Notunuz 60 ile 50 arasındadır");
      break;

    case "FF":
      print("Notunuz 50 ile 40 arasındadır");
      break;

    default:
      print("Hatalı giriş");
      break;

    /* Default kısmını şu şekilde de yazabilirdik:
      default:
      {
        print("Hatalı giriş");
      }
      */
  }
}
