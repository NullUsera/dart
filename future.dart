import 'dart:async';

void main() {
  // testFuture1();
  testFuture2();
}

void testFuture1() {
  Future future = new Future(() => print('future'));
  Future future2 = new Future(() => null);
  Future future3 = new Future(() => null);
  Future future4 = new Future(() => null);

  future4.then((value) => print('future4'));
  future3.then((value) {
    print('future3');
    new Future(() => print('new Future'));
    future2.then((value) => print('future2'));
  });

  future.then((value) => null);
  print('new print');

  //new print
  //future
  //future3
  //future2
  //future4
  //new Future
}

void testFuture2() {
  scheduleMicrotask(() => print('scheduleMicrotask-1'));
  new Future.delayed(new Duration(seconds: 2), () => print('delayed task'));

  new Future(() => print('s1')).then((value) {
    print('s2');
    scheduleMicrotask(() => print('s3'));
  }).then((value) => print(value));

  new Future(() => print('s5'));
  scheduleMicrotask(() => print('s6'));
  print('s7');

  //s7
  //scheduleMicrotask-1
  //s6

}
