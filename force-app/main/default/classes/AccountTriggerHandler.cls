public with sharing class AccountTriggerHandler 
{
    public static void setDefaultType(List<Account> newAccounts) {
        for (Account acc : newAccounts) {
            // Check if the Type field is null or empty
            if (String.isBlank(acc.Type)) {
                // Set the Type field to 'Prospect'
                acc.Type = 'Prospect';
            }
        }
    }
    

}