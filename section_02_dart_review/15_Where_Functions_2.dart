enum ErrorCode {
  noSUchElements(code: -1),
  tooManyElements(code: -2),
  noError(code: 0);

  final int code;

  const ErrorCode({required this.code});
}

void main(List<String> args) {
  var a1 = [1, 2.5, 3.2, 5];
  //a1.removeWhere((element) => element % 2 == 0);
  //a1.retainWhere((element) => element % 2 == 0);
  print(a1);
  var b = a1.firstWhere((element) => element % 2 == 0, orElse: () => -1);
  print(b);
  late var e;
  ErrorCode ec = ErrorCode.noError;
  try {
    e = a1.singleWhere(
      (element) {
        return element % 2 == 0;
      },
      orElse: () {
        ec = ErrorCode.noSUchElements;
        return ec.code;
      },
    );
  } catch (error) {
    ec = ErrorCode.tooManyElements;
    e = ec.code;
  }
  print(e);
  print(ec);
}
