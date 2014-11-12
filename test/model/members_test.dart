import 'package:unittest/unittest.dart';
import 'package:ex08/association_members.dart';

testMembers() {
  var model = MembershipModel.one();
  Members members = model.members;
  var marc = 'mbreton@gmail.com';
  var lucie = 'lpelletier@hotmail.com';
  var alain = 'aparadis@hotmail.com';
  group('Testing Members', () {
    test('Add member', () {
      var member = new Member();
      expect(member, isNotNull);
      member.lastName = 'Breton';
      member.firstName = 'Marc';
      member.email = marc;
      var added = members.add(member);
      expect(added, isTrue);
      members.display('Add member');
    });
    test('Update member', () {
      var member = members.find(marc);
      expect(member, isNotNull);
      var email = 'mbreton@hotmail.com';
      member.email = email;
      expect(member.email, equals(email));
      members.display('Update member');
    });
    test('Add member, update member, remove member', () {
      var member = new Member();
      expect(member, isNotNull);
      member.lastName = 'Paradis';
      member.firstName = 'Alain';
      member.email = alain;
      var added = members.add(member);
      expect(added, isTrue);

      var name = 'Nicole';
      member.firstName = 'Nicole';
      expect(member.firstName, equals(name));

      var length = members.length;
      members.remove(member);
      expect(members.length, equals(--length));

      members.display('Add member, update member, remove member');
    });
  });
}

main() {
  testMembers();
}