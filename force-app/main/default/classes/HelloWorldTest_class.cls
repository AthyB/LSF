@isTest
public class HelloWorldTest_class	{
    
    @isTest static void updateLead()    {
        
        Lead myLead = new Lead();
        myLead.FirstName = 'Atheerious';
        myLead.LastName = 'Bdaiwius';
        myLead.Company = 'Athy PLC';
        insert myLead;
        
        myLead.Company = 'Atheerious PLC';
        update myLead;
    
    }

}