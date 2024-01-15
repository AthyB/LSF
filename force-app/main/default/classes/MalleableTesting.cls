public class MalleableTesting{
    public void malleableTesting(){
    }

    public void locationValidator(){

        //if user in United States, update field 'Alias' with 'test123'
        List<User> updateUserList = new List<User>();
        List<User> allUsers = [SELECT Id, Country, Alias
                               FROM User
                               WHERE Department = 'System & Tools'
                               LIMIT 10];

        for (User u : allUsers){

            if (u.Country == 'United States'){
                u.Alias = 'test123';
            } else{
                //show error message
                System.debug('Error: User ' + u.Alias + 'is not in the United States');
            }
        }

        Update updateUserList;
    }

}