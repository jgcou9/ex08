library ex08_1;

part '../lib/ex08_1_functions.dart'; 

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
}