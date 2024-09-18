public with sharing class AccountTriggerHandler4 
{
    public static void createDefaultContactOnInsert(List<Account> newAccounts) {
        List<Contact> contactsToInsert = new List<Contact>();

        for (Account acc : newAccounts) {
            // Create a new contact related to each inserted account
            Contact con = new Contact(
                LastName = 'DefaultContact', // Default LastName
                Email = 'default@email.com', // Default Email
                AccountId = acc.Id           // Link contact to the account
            );
            contactsToInsert.add(con);  // Add the contact to the list
        }

        // Insert all the new contacts at once after the loop
        if (contactsToInsert.size() > 0) {
            insert contactsToInsert;
        }
    }
}