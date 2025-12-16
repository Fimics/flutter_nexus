
void main(){

  int number =1;
  switch (number) {
  // Constant pattern matches if 1 == number.
    case 1:
      print('one');
  }

  ///许多模式使用子模式，有时分别称为外部模式和内部模式。模式在其子模式上递归匹配。例如，任何集合类型模式的单个字段可以是变量模式或常量模式

  /**
   * case [a, b]不是简单的变量声明，而是一个模式，它会尝试：
      检查 obj是否是一个列表
      检查列表长度是否为 2
      检查第一个元素是否等于常量 'a'
      检查第二个元素是否等于常量 'b'
   */

  const e = 'a';
  const f = 'b';
  var list = [e,f];
  switch (list) {
  // List pattern [a, b] matches obj first if obj is a list with two fields,
  // then if its fields match the constant subpatterns 'a' and 'b'.
    case [e, f]:
      print('$e, $f');
  }

  ///解构
  ///当对象和模式匹配时，模式随后可以访问对象的数据并将其分解。换句话说，模式会解构对象：
  var numList = [1, 2, 3];
// List pattern [a, b, c] destructures the three elements from numList...
  var [a, b, c] = numList;
// ...and assigns them to new variables.
  print(a + b + c);

  /**
   * 这个模式的意思是：匹配一个长度为2的列表，其中：
      第一个元素必须是 'a'或​ 'b'（逻辑或模式）
      第二个元素可以是任意值，并且将其值绑定到新变量 c中
      如果匹配成功，打印第二个元素的值
   */
  switch (list) {
    case ['a' || 'b', var c]:
      print(c);
  }

  // Declares new variables a, b, and c.
  //模式变量声明必须以 var 或 final 开头，后跟一个模式
  var (d, [g, k]) = ('str', [1, 2]);
  print("d $d g $g k $k");

  var (l, r) = ('left', 'right');
  (r, l) = (l, r); // Swap.
  print('$l $r'); // Prints "right left"

   ///包含了常量匹配、关系匹配、逻辑组合和记录（Record）解构

  // switch (obj) {
  // // Matches if 1 == obj.
  //   case 1:
  //     print('one');
  //
  // // Matches if the value of obj is between the
  // // constant values of 'first' and 'last'.
  //   case >= first && <= last:
  //     print('in range');
  //
  // // Matches if obj is a record with two fields,
  // // then assigns the fields to 'a' and 'b'.
  //   case (var a, var b):
  //     print('a = $a, b = $b');
  //
  //   default:
  // }

  Map<String, int> hist = {'a': 23, 'b': 100};

  for (var MapEntry(key: key, value: count) in hist.entries) {
    print('$key occurred $count times');
  }

  //验证传入的 JSON
  var data = {
    'user': ['Lily', 13],
  };
  var {'user': [name, age]} = data;
  
}