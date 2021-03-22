import 'package:flavorconcept/import_class.dart';

void main() {
  FlavorConfig(
      flavor: Flavor.PROD,
      color: Colors.red,
      flavorValuesObject: FlavorValues(
          baseUrl:
          "orignal url"));
  runApp(MyApp());
}
