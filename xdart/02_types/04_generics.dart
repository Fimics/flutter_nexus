
void main(){
  var names = <String>['Seth', 'Kathy', 'Lars'];
  var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
  var pages = <String, String>{
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots',
    'humans.txt': 'We are people, not machines',
  };

  var nameSet = Set<String>.of(names);
}

abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

class Foo<T extends Object> {
  // Any type provided to Foo for T must be non-nullable.
}