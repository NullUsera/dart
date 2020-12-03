void main() {
  Singleton singleton1 = Singleton._singleton;
  Singleton singleton2 = Singleton._singleton;

  print(singleton1 == singleton2);
}

//工厂构造函数factory无法访问this
//工厂构造函数不会自动生成实例，通过代码来决定返回实例对象
class Singleton {

  String name;
  static Singleton _singleton;

  Singleton._newObject(this.name);

  // factory Singleton([String name = "Singleton"]) {
  //   if (Singleton._singleton == null) {
  //     Singleton._singleton = Singleton._newObject(name);
  //   }
  //   return Singleton._singleton;
  // }

  //以上代码可简写成：
  factory Singleton([String name = "Singleton"]) =>
      Singleton._singleton ?? Singleton._newObject(name);
}
