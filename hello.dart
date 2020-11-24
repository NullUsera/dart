//程序主入口
void main() {
  Log1.printLog();
  var log2 = new Log2();
  log2.printLog();
}

class Log1 {
  static printLog() {
    print("Hello dart 1");
  }
}

class Log2 {
  printLog() {
    print("Hello dart 2");
  }
}
