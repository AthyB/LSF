public class AccountUtility {
    
    public static void viewAnnualRevenue(){
        List <Account> accountsList = [SELECT Name, AnnualRevenue FROM Account];
        for (Account accnt : accountsList){
            System.debug(accnt.Name + ' : ' + accnt.AnnualRevenue);
        }        
    }
    
}