import 'myLib.dart' as lib1; //导入文件
import 'myLib.dart' show Test; //只导入Test文件
import 'myLib.dart' hide Test; //除了Test其他都导入
import 'myLib.dart' deferred as lazyLib;

void lazyLoad() async {
  await lazyLib.loadLibrary();
}

void main() {
  MyLib.printMsg();
  lib1.Test.printMsg();
  Test.printMsg();

  int sum(int a, int b) => a + b;
  //可选命名参数
  int sum1({int a, int b}) {
    if (a != null && b != null)
      return a + b;
    else
      return 0;
  }

  //可选命名参数默认值
  int sum12({int a = 1, int b = 1}) {
    return a + b;
  }

  //可选位置参数
  int sum2(int a, [int b, int c]) {
    if (b != null && c != null)
      return a + b + c;
    else
      return a;
  }

  //可选位置参数的默认值
  int sum21(int a, [int b = 1, int c = 1]) {
    return a + b + c;
  }

  //闭包函数
  Function addFunc(int x) {
    return (int y) => x + y;
  }

  var fun1 = addFunc(1);
  print(fun1(1)); //2

  print(sum(1, 2)); //3
  print(sum1()); //null
  print(sum1(a: 1, b: 2)); //3
  print(sum12()); //2

  print(sum2(1)); //1
  print(sum2(1, 2, 3)); //6
  print(sum21(1)); //3
}
