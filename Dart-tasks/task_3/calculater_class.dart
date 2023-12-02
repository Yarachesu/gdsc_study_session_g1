class Calculater {
  double _num1;
  double _num2;
  Calculater({required double num1, required double num2})
      : _num1 = num1,
        _num2 = num2;
  double get num1 => _num1;
  set num1(double num) => _num1 = num;

  double get num2 => _num2;
  set num2(double num) => _num2 = num;

  void addition() async {
    await Future.delayed(Duration(seconds: 5), () => print(num1 + num2));
  }

  void substruction() async {
    await Future.delayed(Duration(seconds: 5), () => print(num1 - num2));
  }

  void multiply() async {
    await Future.delayed(Duration(seconds: 5), () => print(num1 * num2));
  }

  void division() async {
    try {
      if (num2 != 0) {
        await Future.delayed(Duration(seconds: 5), () => print(num1 / num2));
      } else {
        await Future.delayed(
            Duration(seconds: 5), () => throw Exception("division by zero"));
      }
    } on Exception catch (e) {
      print("error $e");
    } finally {
      print("done");
    }
  }
}

main() {
  var response = Calculater(num1: 4, num2: 2);
  response.division();
}
