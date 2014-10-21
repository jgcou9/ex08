library ex08;

part '../lib/functions.dart'; 

sortByLastName(var members){ 
  members.sort((x, y) => x['lastName'].compareTo(y['lastName'])); 
  print('Question 1 : Sort by last name'); printMatrix(members); print(''); 
} 
 
sortByFirstName(var members){ 
  members.sort((x, y) => x['firstName'].compareTo(y['firstName'])); 
  print('Question 1 : Sort by first name'); printMatrix(members); print(''); 
} 
 
printByGivenLetter(var members, var letter){ 
  print('Question 1 : Member with last name starting with - $letter'); 
  for(var i in members){ 
    if(i['lastName'][0] == letter) 
      print(i);} 
  print(''); 
}  
 
addMember(var associationName, var firstName, var lastName, var email, var memberList){ 
  memberList.add({ 
    'association': associationName, 
    'firstName': firstName, 
    'lastName': lastName, 
    'email': email}); 
  print('Question 2 : Add a member - $firstName $lastName'); printMatrix(memberList); print(''); 
} 

removeMember(var firstName, var lastName, var memberList){ 
  for(var i = 0; i < memberList.length; i++){ 
    if(memberList[i]['firstName'] == firstName && memberList[i]['lastName'] == lastName){ 
      memberList.removeAt(i);}} 
  print('Question 2 : Remove a member - $firstName $lastName'); printMatrix(memberList); print(''); 
}  
 
updateMember(var associationName, var firstName, var lastName, var email, var memberList){ 
  for(var i = 0; i < memberList.length; i++){ 
    if(memberList[i]['firstName'] == firstName && memberList[i]['lastName'] == lastName){ 
      memberList[i]['association'] = associationName; 
      memberList[i]['firstName'] = firstName; 
      memberList[i]['lastName'] = lastName; 
      memberList[i]['email'] = email; }} 
  print('Question 2 : Update a member - $firstName $lastName'); printMatrix(memberList); print(''); 
} 
 
isAMember(var firstName, var lastName, var listOfMembers){ 
  for(var i in listOfMembers){ 
    if(i['firstName'] == firstName && i['lastName'] == lastName) 
      return true;} 
  return false; 
} 

printMatrix(var matrix){ 
  for(var i in matrix){ 
    print(i);} 
} 

void main(){ 
  sortByLastName(q1Members); 
  sortByFirstName(q1Members); 
  printByGivenLetter(q1Members, 'K'); 
 
  assert(!isAMember('Kyle', 'Turris', q1Members)); 
  addMember('Sens', 'Kyle', 'Turris', 'KTurris@sens.com', q1Members); 
 
  assert(isAMember('Dwyane', 'Wade', q1Members)); 
  removeMember('Dwyane', 'Wade', q1Members); 
 
  assert(isAMember('Daniel', 'Alfredsson', q1Members));  
  updateMember(['Sens', 'Wings'], 'Daniel', 'Alfredsson' , 'DAlfredsson@sens.com' , q1Members); 
}