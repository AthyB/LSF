//If a user has not logged in for 30 days, deactivate their account.
//This is done by checking the last login date of the user and comparing it to the current date.
//If the difference is greater than 30 days, the user is deactivated.
//If the difference is less than 30 days, the user is not deactivated.
//This is done by subtracting the current date from the last login date.
        
public with sharing class DeactivateUsersLoginHistory{   
    /*
    public static void checkLoginHistory(String userId, String lastLoginDate) {
        if (lastLoginDate != null) {
            df = Datetime.now().format('yyyy-MM-dd');
            Datetime currentDate = new Date();
            Datetime lastLogin = null;
            try {
                lastLogin = df.parse(lastLoginDate);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            long difference = currentDate.getTime() - lastLogin.getTime();
            long differenceDates = difference / (24 * 60 * 60 * 1000);
            
            if (differenceDates > 30) {
                DeactivateUsers.deactivateUser(userId);
            }
        }
    }
}

/*
public static void DeactivateUsersLoginHistory(List<User> allUsers){ 

//List<User> allUsers; 

//User allUsers = [SELECT Id, Name, LastLoginDate, isActive FROM User WHERE isActive = TRUE];
        
        for (User u : allUsers) {
            if (u.LastLoginDate != null) {
                DateTime lastLoginDate = new DateTime(u.lastLoginDate);
                DateTime currentDate = new DateTime();
                int days = Days.daysBetween(lastLoginDate, currentDate).getDays();
                if (days > 30) {
                    u.IsActive(false);
                }
                Update u;
            }
        }
    }
    */
}