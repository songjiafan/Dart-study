String str = 'songjf';
bool flag = true;

bool func1() {
  // if判断必须用bool值，不会和js一样隐式转型
  if (flag) {
    return true;
  } else {
    return false;
  }
}

// 这个地方func2后面加了空格也没问题，但是vscode变色了
void func2() {
  print('12');
}

void main() {
  if (func1()) {
    print('true');
  }
  func2();
  const List lista = [1,2,3,4];
  for (var i in lista) {
    print(i);
  }
}