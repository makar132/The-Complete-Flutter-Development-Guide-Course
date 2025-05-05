void main(List<String> args) {
  var a1 = [1, 2.5, 3.2, 4, 5, 6];
  print(a1);
  // var b1 = a1.where((element) => element < 4);
  // print(b1);
  // var b2 = a1.firstWhere((element) => element < 4);
  // print(b2);
  // var b3 = a1.lastWhere((element) => element < 4);
  // print(b3);
  //   print(a1);
  var b1 = a1.where((element) => element % 2 == 0);
  print(b1);
  var b2 = a1.firstWhere((element) => element % 2 == 0);
  print(b2);
  var b3 = a1.lastWhere((element) => element % 2 == 0);
  print(b3);
  var c1 = a1.indexWhere((element) => element % 2 == 0);
  print(c1);
  var c2 = a1.lastIndexWhere((element) => element % 2 == 0);
  print(c2);
  var d1 = a1.whereType<double>();
  print(d1);
  var d2 = a1.whereType<int>();
  print(d2);
}
