
Future<void> main() async {
  var list  =naturalsTo(10);
  print(list);

  var stream = asynchronousNaturalsTo(20);
  await stream.forEach((value) {
    print('收到值: $value');
  });
}

// Iterable<int> naturals(int n) sync*{
//   int k =0;
//   while ( k <n ) yield k++;
// }



Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}


Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

//外部函数是其函数体与其声明分开实现的函数。在函数声明之前包含外部关键字

/**
 * 外部函数的实现可以来自另一个 Dart 库，或者更常见的是，来自另一种语言。在互操作环境中，外部函数会引入外部函数或值的类型信息，
 * 使其在 Dart 中可用。实现和使用在很大程度上是平台特定的，因此请查看互操作文档，例如 C 或 JavaScript，以了解更多信息。
*外部函数可以是顶级函数、实例方法、getter 或 setter，或者非重定向构造函数。
*实例变量也可以是外部的，这相当于外部 getter 和外部 setter(如果实例变量不是最终的)。
 */
external void someFunc(int i);