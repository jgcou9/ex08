import 'package:unittest/unittest.dart';
import 'package:ex08/association_members.dart';

testAssociations() {
  var model = MembershipModel.one();
  Associations associations = model.associations;
  var devArm = 'Development and Peace';
  group('Testing Associations', () {
    test('Add association', () {
      var association = new Association();
      expect(association, isNotNull);
      association.name = devArm;
      association.description = 'Official international development arm of the Catholic Church in the USA';
      var added = associations.add(association);
      expect(added, isTrue);
      associations.display('Add association');
    });
    test('Update association', () {
      var association = associations.find(devArm);
      expect(association, isNotNull);
      var description = 'Official international development arm of the Catholic Church in Canada';
      association.description = description;
      expect(association.description, equals(description));
      associations.display('Update association');
    });
  });
}

main() {
  testAssociations();
}