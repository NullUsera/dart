void main() {
  // getName1();
  // getName2();
  // getName3();
  //getString getName2 getName3 getName1

  Future.delayed(new Duration(seconds: 2), () {
    return 'Hello dart from delayed';
  }).then((value) => print(value));
}

getName1() async {
  await getString();
  print('getName1');
}

getString() {
  print('getString');
}

getName2() {
  print('getName2');
}

getName3() {
  print('getName3');
}
