import 'my_stack.dart';

void main(List<String> args) {
  MyStack myStack=MyStack();
  myStack.push(5);
  myStack.push("seray");
  myStack.push(true);

  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());

  IntMyStack intMyStack=IntMyStack();
  intMyStack.push(5);
  intMyStack.push(7);
  intMyStack.push(2);

  print(intMyStack.pop());
  print(intMyStack.pop());
  print(intMyStack.pop());


GenericStack<String> genericStack=GenericStack();
genericStack.push("seray");

}

