void main() {
  String something = 'abc';
  try {
    double mysomething = double.parse(something);
    print(mysomething + 46);
  } catch (e) {
    print("there has been a error!!");
  }
}
