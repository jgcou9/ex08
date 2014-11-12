part of association_members;

class MembershipModel extends ConceptModel {
  static const String ASSOCIATION = 'Association';
  static const String MEMBER = 'Member';

  static MembershipModel membershipModel;

  MembershipModel.private();

  static MembershipModel one() {
    if (membershipModel == null) {
      membershipModel = new MembershipModel.private();
    }
    return membershipModel;
  }

  Map<String, ConceptEntities> newEntries() {
    var map = new Map<String, ConceptEntities>();
    var associations = new Associations();
    map[ASSOCIATION] = associations;
    var members = new Members();
    map[MEMBER] = members;
    return map;
  }

  Associations get associations => getEntry(ASSOCIATION);
  Members get members => getEntry(MEMBER);

  init() {
    var association1 = new Association();
    association1.name = 'Centraide';
    association1.description = 'Raise money for local groups that address community issues and problems';
    associations.add(association1);

    var member1 = new Member();
    member1.firstName = 'Robert';
    member1.lastName = 'Fortier';
    member1.email = 'rfortier@centraide.com';
    members.add(member1);

    var member2 = new Member();
    member2.firstName = 'Rose';
    member2.lastName = 'Lessard';
    member2.email = 'rlessard@hotmail.com';
    members.add(member2);

    var membership1 = new Membership();
    membership1.association = association1;
    membership1.member = member1;
    membership1.description = 'President';
    association1.memberships.add(membership1);
    member1.memberships.add(membership1);

    var membership2 = new Membership();
    membership2.association = association1;
    membership2.member = member2;
    membership2.description = 'Volunteer';
    association1.memberships.add(membership2);
    member2.memberships.add(membership2);

    var association2 = new Association();
    association2.name = 'Unicef';
    association2.description = 'Provide long-term humanitarian and developmental assistance in developing countries';
    associations.add(association2);

    var membership3 = new Membership();
    membership3.association = association2;
    membership3.member = member2;
    membership3.description = 'Volunteer';
    association2.memberships.add(membership3);
    member2.memberships.add(membership3);
  }

  display() {
    print('===========');
    print('Membership Model');
    print('===========');
    for (var association in associations) {
      print('  Association');
      print('  -------');
      print(association.toString());
      print('    Members');
      print('    -----');
      for (var membership in association.memberships) {
        print(membership.toString());
      }
    }
    print('===========');
    for (var members in members) {
      print('  Member');
      print('  --------');
      print(members.toString());
      print('    Associations');
      print('    -----');
      for (var membership in members.memberships) {
        print(membership.toString());
      }
    }
    print(
      '=========== =========== =========== '
      '=========== =========== =========== '
    );
  }
}