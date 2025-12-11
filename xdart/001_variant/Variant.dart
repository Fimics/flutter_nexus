
final String name ='ddd';
const bar =10000;
late String description;

var foo = const[];
final bar1 = const[];


void main(){
  description='Feijoada!';
  print(description);
  print(name);

  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: 'int'}; // Use is and collection if.
  const set = {if (list is List<int>) ...list}; // ...and a spread.
}