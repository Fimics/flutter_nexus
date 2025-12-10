import 'Spacecraft.dart';
import 'mixin.dart';

class Orbiter extends Spacecraft with Piloted{
  double altitude;

  Orbiter(super.name,DateTime super.launchDate,this.altitude);
}