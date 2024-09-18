public with sharing class AccountTriggerHandler3 
{
    public static void setRatingOnInsert(List<Account> newAccounts) {
        for (Account acc : newAccounts) {
            // Check if all the fields are not null
            if (acc.Phone != null && acc.Website != null && acc.Fax != null) {
                acc.Rating = 'Hot';
            }
        }
    }
}