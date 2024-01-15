Student__c student = new Student__c();

student.Name 						   = 'Chuck Norris';
student.Number_of_Classes_Purchased__c = 3;
student.Number_of_Classes_Completed__c = 1.25;

System.debug('Student Name: ' + student.Name);
System.debug('# of Classed Purchased: ' + student.Number_of_Classes_Purchased__c);
System.debug('# of Classed Completed: ' + student.Number_of_Classes_Completed__c);