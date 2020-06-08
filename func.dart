// 不定位置参数，函数，参数默认值，字符串模板
String func1(String param, [String param2 = 'xixi']) {
  return "hello world $param $param2";
}

// 函数后面不能接分号

func2(int a) {
  return (int b) => (int c) => (int d) => print(a + b + c + d);
}

// const 不能声明函数，因为const必须定义编译时就确定的值
// const func = (int b) => b;
// 函数的参数不用属性修饰
func3(param) {
  return param;
}

// main函数
main() {
  func2(1)(2)(3)(4);
  // print(func(100));
  // final 修饰符
  final String helloWorld = func1('郭健', '哈哈');
  print(helloWorld);
  print(func3(1000));
}