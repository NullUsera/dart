//构造函数
class Person {
  String name;
  int age;
  int sex;

  //dart中简写的构造函数
  Person(this.name, this.age, this.sex);
}

//初始化列表
class Point {
  num x, y, z;

  // Point(x, y) {
  //   this.x = x                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ;
  //   this.y = y;
  //   z = x + y;
  // }

  Point(x, y)
      : x = x,
        y = y,
        z = x + y;
}

//factory：当实现构造函数但是不想每次都创建该类的一个实例

abstract class Animal {
  void eat(String name);
}

abstract class Animal2 {
  void play(String str);
}

class Dog extends Animal {
  @override
  void eat(String name) {
    print(name);
  }
}

//使用with关键字可以实现多继承
class Test extends Animal with Animal2 {
  @override
  void eat(String name) {
    print("eat");
  }

  @override
  void play(String str) {
    print('play');
  }
}

typedef MyFunc(int a, int b);

void add(int a, int b) {
  print(a + b);
}

void main() {
  var person = new Person("dart", 10, 1);
  print(person.name);

  var point = Point(1, 2);
  print(point.z);

  var animal = new Dog();
  animal.eat("骨头");
}
