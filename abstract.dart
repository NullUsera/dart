abstract class Massage {
  void doMassage();

  //工厂模式
  factory Massage(String type) {
    switch (type) {
      case "foot":
        return FootMassage();
      case "special":
        return SpecialMassage();
    }
  }
}

class FootMassage implements Massage {
  @override
  void doMassage() {
    print("我要足疗");
  }
}

class SpecialMassage implements Massage {
  @override
  void doMassage() {
    print("我要特殊服务");
  }
}

void main() {
  var footMassage = new Massage("foot");
  var specialMassage = new Massage("special");
  footMassage.doMassage();
  specialMassage.doMassage();
}
