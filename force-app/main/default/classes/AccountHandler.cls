public class AccountHandler {
    
    public static void insertAccount(Integer numNewAccounts){
        
        List <Account> AddAccounts = new List <Account> ();
        
        Integer counter = 0;
        
        while (counter <numNewAccounts){
            Account a = new Account();
            a.name = 'Acme Inc' + counter;
            a.AccountNumber = 'A000' + counter;
            addAccounts.add(a);
            counter++;
            
        }
        
        insert addAccounts;
    }
    
}