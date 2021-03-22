import 'package:flavorconcept/import_class.dart';
enum Flavor {
  DEV,
  PROD,
  STAG,
}

class FlavorValues {


  final String baseUrl;

  FlavorValues({@required this.baseUrl});


}

class FlavorConfig {
  final Flavor flavor;
  final String name;
  final Color color;
  final FlavorValues flavorValuesObject;
  static FlavorConfig _flavorConfigObject;

  factory FlavorConfig({
    @required Flavor flavor,
    Color color: Colors.blueAccent,
    @required FlavorValues flavorValuesObject,
  }) {
    _flavorConfigObject ??= FlavorConfig._internal(
        flavor, flavor.toString(), color, flavorValuesObject);

    return _flavorConfigObject;
  }

  FlavorConfig._internal(
      this.flavor, this.name, this.color, this.flavorValuesObject);

  static FlavorConfig get instance => _flavorConfigObject;

  static bool isProdution() => _flavorConfigObject.flavor == Flavor.PROD;

  static bool isDevalopment() => _flavorConfigObject.flavor == Flavor.DEV;

  static bool isStating() => _flavorConfigObject.flavor == Flavor.STAG;
}
