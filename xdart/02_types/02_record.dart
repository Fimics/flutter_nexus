void main(){
  // 修复记录语法
  var record1 = ('first', a: 2, b: true, 'last');
  print('记录1: $record1');

  print('遍历 record1 的所有字段:');
  print('1. 位置参数 \$1: ${record1.$1}');
  print('2. 位置参数 \$2: ${record1.$2}');
  print('3. 命名参数 a: ${record1.a}');
  print('4. 命名参数 b: ${record1.b}');

  // 创建元组记录
  var record2 = (3, 4);
  print('交换前: $record2');

  // 调用交换函数
  var swappedRecord = swap(record2);
  print('交换后: $swappedRecord');

  (num, Object) pair = (42, 'a');

  var first = pair.$1; // Static type `num`, runtime type `int`.
  var second = pair.$2; // Static type `Object`, runtime type `String`

  final json = <String, dynamic>{'name': 'Dash', 'age': 10, 'color': 'blue'};
  var userRecord = userInfo(json);
  print('Record: $userRecord'); // 输出: Record: (Dash, 10)
}

(int, int) swap((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

(String name, int age) userInfo(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}