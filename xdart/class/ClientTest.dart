
import 'Orbiter.dart';
import 'Planet.dart';
import 'Spacecraft.dart';

void main(){

  var launchDate=DateTime.now();
  Spacecraft spacecraft = Spacecraft("name",launchDate);
  spacecraft.describe();

  final yourPlanet = Planet.venus;

  if (!yourPlanet.isGiant) {
    print('Your planet is not a "giant planet".');
  }

  print("-----------------------------");
  final orbiter = Orbiter("orbiter", launchDate, 134441343);
  orbiter.describe();
  orbiter.describeCrew();

  //async await
   printWithDelay2("call 0");
   print("call before...");
   printWithDelay("call");
   print("call after...");
   
}

const oneSecond=Duration(seconds: 1);
Future<void> printWithDelay(String message) async{
   await Future.delayed(oneSecond);
       print(message);
}

Future<void> printWithDelay2(String message){
   return Future.delayed(oneSecond).then((_){
      print(message);
   });
}

/*
    Future<void> createDescriptions(Iterable<String> objects) async {
      for (final object in objects) {
        try {
          var file = File('$object.txt');
          if (await file.exists()) {
            var modified = await file.lastModified();
            print(
              'File for $object already exists. It was modified on $modified.',
            );
            continue;
          }
          await file.create();
          await file.writeAsString('Start describing $object in this file.');
        } on IOException catch (e) {
          print('Cannot create description for $object: $e');
        }
      }
    }
    //你也可以使用 async* 关键字，其可以为你提供一个可读性更好的方式去生成 Stream。

    Stream<String> report(Spacecraft craft, Iterable<String> objects) async* {
      for (final object in objects) {
        await Future.delayed(oneSecond);
        yield '${craft.name} flies by $object';
      }
    }
 */

