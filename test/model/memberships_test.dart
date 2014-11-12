import 'package:unittest/unittest.dart';
import 'package:ex08/association_members.dart';

testMemberships() {
  var model = MembershipModel.one();
  Members members = model.members;
  Associations associations = model.associations;
  var rlessard = 'rlessard@hotmail.com';
  var devArm = 'Development and Peace';
  group('Testing Memberships', () {
    test('Add membership', () {
      var member = new Member();
      expect(member, isNotNull);
      member.lastName = 'Lessard';
      member.firstName = 'Rose';
      member.email = rlessard;
      var added = members.add(member);
      expect(added, isTrue);
      members.display('Add member');

      var association = new Association();
      expect(association, isNotNull);
      association.name = devArm;
      association.description = 'Official international development arm of the Catholic Church in Canada';
      added = associations.add(association);
      expect(added, isTrue);
      associations.display('Add association');

      var membership = new Membership();
      expect(membership, isNotNull);
      membership.member = member;
      membership.association = association;
      membership.description = 'Volunteer';
      added = member.memberships.add(membership);
      expect(added, isTrue);
      member.memberships.display('Add member membership');
      added = association.memberships.add(membership);
      expect(added, isTrue);
      association.memberships.display('Add association membership');
    });
  });
}

main() {
  testMemberships();
}