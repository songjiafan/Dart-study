class Person {
  String name;
  int age;
  // 只有静态属性才能用int修饰，
  // const int age = 25;

  Person(String name, int age) { // 函数参数不用
    this.name = name;
    this.age = age;
  }
}

class Person2 {
  String name;
  int age;
  // 只有静态属性才能用int修饰，
  // const int age = 25;

  Person2(String name, int age) { // 函数参数不用
    this.name = name;
    this.age = age;
  }
}

// 工厂构造类
class PersonCache {
  final String name;
  bool mute = false;

  // 定义静态常量Map作为缓存
  static final Map<String, PersonCache> _cache = <String, PersonCache>{};
  factory PersonCache (String name) {
    if (_cache.containsKey(name)) { // containsKey 是map的判断是否有这个缓存 类似于has
      return _cache[name];
    } else {
     final logger = PersonCache._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  PersonCache._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

// 抽象类 抽象方法
abstract class BasicApi {
  void call(String url);
}

// 具体方法实现
class BaseApiClass extends BasicApi {
  void call(String url) {
    print('call1');
    print(url);
  }

  void xx() {
    print(123);
  }
}

// 业务扩展类继承
class PageApi extends BaseApiClass {
  void call2(String url, String a) {
    super.call('123123');
    print(url);
  }

  // 加不加override都行 不加也可以重写 加了规范一点 和java一样
  @override
  void xx() {
    print(456);
  }
}

main() {
  final instance = new Person2('songjf', 25);
  final instancePreson = PersonCache('嘻嘻');
  print(instance is Person2); // 返回true，判断是否实例
  final inst = new PageApi();
  inst.call2('rel', 'xixix');
  inst.xx();
}