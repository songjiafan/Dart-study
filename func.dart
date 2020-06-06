// 不定位置参数，函数，参数默认值，字符串模板
String func1(String param, [String param2 = 'xixi']) {
  return "hello world $param $param2";
}

// main函数
main() {
  // final 修饰符
  final String helloWorld = func1('郭健', '哈哈');
  print(helloWorld);
}