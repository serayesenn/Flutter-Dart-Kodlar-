class MyStack{
  List _listem=[];

  push(yeniEleman){      // push ile yığına eleman eklenir.
    _listem.add(yeniEleman);
  }

  pop(){  // pop son elemanı çıkarır ve değerini döndürür.
    return _listem.removeLast();
  }
}


class IntMyStack{
  List<int> _listem=[];

  void push(int yeniEleman){   
    _listem.add(yeniEleman);
  }

  int pop(){ 
    return _listem.removeLast();
  }
}


class GenericStack<T>{
  List<T> _listem=<T>[];

  void push(T yeniEleman){
    _listem.add(yeniEleman);
  }

  T pop(){
    return _listem.removeLast();
  }
}