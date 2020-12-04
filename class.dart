void main() {
  var point = Point(11, 12);
  var point1 = Point.fromJson({'x': 9, 'y': 13});
  print(point1.x); //9

  var point2 = Point.alongX(15);
  print(point2.x); //15
  print(point2.y); //使用默认值10
}

class Point {
  int x, y;

  //带参构造函数
  Point(this.x, this.y);

  //命名构造函数
  Point.fromJson(Map json) {
    this.x = json['x'];
    this.y = json['y'];
  }

  //重定向构造函数(使用冒号调用其他构造函数)
  Point.alongX(int x) : this(x, 10);
}

class XPoint extends Point {
  XPoint(int x, int y) : super(x, y);
}
