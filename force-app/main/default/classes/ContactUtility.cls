public class ContactUtility {
    
    public static void viewContacts(){
        List<Contact> listOfContacts = [SELECT FirstName, LastName FROM Contact LIMIT 3];
        for (Contact con : listOfContacts){
            String fullName = 'First Name: ' + con.FirstName + ', Last Name: ' + con.LastName;
            system.debug(fullName);
        }
    }
    
}