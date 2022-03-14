import 'package:flutter_test/flutter_test.dart';
import 'package:recursos_humanos/app/person/person_repository.dart';
 
void main() {
  late PersonRepository repository;

  setUpAll(() {
    repository = PersonRepository();
  });
}