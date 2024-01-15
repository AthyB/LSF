@isTest
public class HelloWorldTest{
    @isTest
    static void updateLead(){
        Lead myLead = new Lead();
        myLead.FirstName = 'Alex';
        myLead.LastName = 'Doe';
        myLead.Company = 'ABC';
        insert myLead;

        myLead.FirstName = 'John';
        update myLead;
}
}