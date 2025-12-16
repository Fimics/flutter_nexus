
///在 Dart 中，函数是第一类对象，这意味着它们可以被赋值给变量，作为参数传递，并从其他函数返回。
/// 可以使用 typedef 声明显式地命名函数类型，这对于提高清晰度和可复用性非常有用

void main(){


  assert(
  say('Bob', 'Howdy', 'smoke signal') ==
      'Bob says Howdy with a smoke signal',
  );

  //您可以将一个函数作为参数传递给另一个函数
  var list = [1, 2, 3];
// Pass printElement as a parameter.
  list.forEach(printElement);

  // Store `greet` in a variable and call it.
  void Function(String, {String greeting}) g = greet;
  g('Dash', greeting: 'Howdy');

}

// bool isNoble(int atomicNumber) {
//   var _nobleGases;
//   return _nobleGases[atomicNumber] != null;
// }

///尽管 Effective Dart 建议为公共 API 添加类型注释，但如果忽略类型，该函数仍然可以工作：
// isNoble1(atomicNumber) {
//   return _nobleGases[atomicNumber] != null;
// }

///对于只包含一个表达式的函数，可以使用简写语法：
// bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;

//如果你想要一个命名参数作为强制参数，要求调用方为参数提供一个值，请用 “required” 注释它们：s
// const Scrollbar({super.key, required Widget child});

/**
  可选位置参数
    将一组函数参数包装在 [] 中，并将它们标记为可选的位置参数。如果不提供默认值，它们的类型必须为空，因为它们的默认值将为 null:
 */
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

void printElement(int element) {
  print(element);
}

//可以指定函数的类型，称为函数类型。函数类型是通过将函数名称替换为关键字 Function 从函数声明头中获取的。此外，允许省略位置参数的名称，但命名参数的名称不能省略。
void greet(String name, {String greeting = 'Hello'}) =>
    print('$greeting $name!');


class A {
  static void bar() {} // A static method
  void baz() {} // An instance method
}
