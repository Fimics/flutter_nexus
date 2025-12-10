
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
}