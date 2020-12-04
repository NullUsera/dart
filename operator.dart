void main() {
  //?. 防止因数据为空时操作了数据而导致空指针异常
  String string;
  print(string?.length);

  //~/  取整
  print(10 ~/ 2);
  print(10 ~/ 3);
  print(11 ~/ 10);

  //三目运算符 条件?表达式1:表达式2
  //?? 表达式1??表达式2
  int modAccount = 9;
  bool isPaused;
  // isPaused = modAccount == 9 ? true : false;
  isPaused = modAccount > 9 ?? false;

  print(isPaused);
}
