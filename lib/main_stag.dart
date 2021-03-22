
import 'package:flavorconcept/import_class.dart';


void main() {
  FlavorConfig(
    flavor: Flavor.STAG,
    color: Colors.green,
    flavorValuesObject: FlavorValues(
        baseUrl:
            "https://raw.githubusercontent.com/JHBitencourt/ready_to_go/master/lib/json/person_qa.json"),
  );
  runApp(MyApp());
}
