//变量的声明
//var:声明变量时如果没有初始化操作，那么可以赋值任意类型
//dynamic:动态类型，编译阶段不会类型
//Object:动态类型，编译阶段会检查类型
//dart中没有初始化的对象默认值为null

class Test {
  //类范围的常量使用static constant
  static const TAG = "variable";
}

void main() {
  var d = "var";
  // d = 123; 编译报错

  dynamic d1 = 123;
  d1 = "dynamic";
  // d1.test();//写代码的时候不会提示未找到test()方法
  print(d1);

  Object object = "Object";
  object = 123;
  // object.test();//会报错，提示未找到test()方法
  print(object);

  final String tag = 'tag';
  const TAG = 'Tag';

  //final的初始值可以在编译时确定也可以在运行时确定
  //constant的初始值只能在编译时确定
  final nowDate1 = DateTime.now();
  // const nowDate2 = DateTime.now();

  StringBuffer sb = StringBuffer();
  sb.write('flutter');
  sb.write('dart');

  //以上可以简写成
  sb
    ..write("flutter")
    ..write('dart')
    ..toString();
}
