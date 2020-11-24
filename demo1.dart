void main() {
  //final修饰的变量，必须在定义时进行初始化，初始化后无法修改
  final name = 'dart';
  //const是编译时常量，其要求比final更严格
  const HOME = "home_page";
  print(name);
  print(HOME);

  //dart中int类型未赋值时也是null
  int lineCount;
  assert(lineCount == null);
  print("lineCount is null");

  var one = int.parse('1');
  if (one == 1) {
    print('one==1');
  }

  //四舍五入保留小数点后指定位数
  var pai1 = 3.1415926.toStringAsFixed(5);
  //3.14159
  print(pai1);

  var pai2 = 3.1415926.toStringAsFixed(4);
  //3.1416
  print(pai2);

  var s = """This is a 
             multiple line
             String""";
  print(s);

  //集合
  var list1 = [1, 2, 3];
  for (var i = 0; i < list1.length; i++) {
    print(list1[i]);
  }

  //map
  var maps = {
    "Java": "Java是最流行的后端编程语言",
    "Python": "人生苦短我用Python",
    "PHP": "PHP是世界上最简单的编程语言"
  };

  print(maps["Java1"]);

  say('hello,', 'dart');
  say('hello,', 'dart-', '1');
  sayHello(name);

  doStuff(list: [
    9,
    9,
    9,
    9,
    9,
  ], gifts: {
    "Java": "one",
    "Python": "two"
  });

  doStuff();

  foreach();
}

//方法可选参数用[]标记
void say(String str1, String str2, [String str3]) {
  if (str3 == null) {
    print(str1 + str2);
  } else {
    print(str1 + str2 + str3);
  }
}

void sayHello(String name) {
  print('$name say hello');
}

//有默认值的参数用{}标记
void doStuff(
    {List<int> list: const [1, 2, 3],
    Map<String, String> gifts: const {"one": "1", "two": "2", "three": "3"}}) {
  print('$list' + '$gifts');
  print(list.length.toString() + "," + gifts.length.toString());
}

//is：类型判断
//as：类型转换
void judge() {
  if (1 is String) {
    print("OK");
  }
}

//for循环
void foreach() {
  var numbers = [1, 2, 3, 4, 5];
  for (var number in numbers) {
    print(number.toString());
  }
}
