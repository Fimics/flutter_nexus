
final String name ='ddd';
const bar =10000;
late String description;

var foo = const[];
final bar1 = const[];


void main(){
  description='Feijoada!';
  print(description);
  print(name);

  const Object i =3;
  const list =[i as int];
  const map ={if(i is int) i:'int'};
  const set = {if (list is List<int>) ...list}
}