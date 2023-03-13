void main(List<String> args) {
  double doubleOrt=ortalamaBul<double>(5.4, 6.5);
  double intOrtalama=ortalamaBul<int>(5, 6);
}

double ortalamaBul<T extends num> (T s1, T s2){
  return (s2+s2)/2;
}