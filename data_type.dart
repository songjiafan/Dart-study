/**
  基本数据类型练习
 */

// 只声明不赋值都是null，因为dart里都是对象，没有赋值就是空指针
int noInit;
bool flag = true;
// 和dynamic不同的是 var之后类型推断确定，不能更改，泛型也一样
var alist = [1, 3, 5];
dynamic name = 'sjf';

// var和dynamic 一个变量之后 这个变量 在同一个作用域（scope）中不能修改
// alist = [123];

// 泛型Map
Map<int, String> myMap1 = {
  1: 'a',
  2: 'b',
};

// 用构造函数
var myMap2 = new Map();
// var myMap2 = {'c': 3};
void func2() {
  myMap2['a'] = '1';
  myMap2['b'] = '2';
}

var set1 = { 'a', 'b', 'c' };
void func3() {
  set1.add('d');
}

// main函数
void main() {
  // final 修饰符
  print(noInit);
  print(alist);
  print(name);
  print(myMap1);
  func2();
  print(myMap2);
  func3();
  print(set1);
  // assert(flag == false);
}