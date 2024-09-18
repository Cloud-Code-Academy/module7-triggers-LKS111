public with sharing class OpportunityTriggerHandler7 
{   public static void setPrimaryContact(List<Opportunity> oppList) 
    {
        // Collect Account Ids from Opportunities
        Set<Id> accountIds = new Set<Id>();
        for (Opportunity opp : oppList) 
        {
            if (opp.AccountId != null) 
            {
                accountIds.add(opp.AccountId);
            }
        }

        // Query related contacts with the title 'CEO' and include the account link
        Map<Id, Contact> accountToCeoMap = new Map<Id, Contact>();
        for (Contact ceo : [SELECT Id, AccountId, FirstName, Title 
                            FROM Contact 
                            WHERE AccountId IN :accountIds AND Title = 'CEO']) 
        {
            accountToCeoMap.put(ceo.AccountId, ceo);
        }

        // Iterate through opportunities and set the primary contact if a CEO exists for the account
        for (Opportunity opp : oppList) 
        {
            if (accountToCeoMap.containsKey(opp.AccountId)) 
            {
                opp.Primary_Contact__c = accountToCeoMap.get(opp.AccountId).Id;
            }
        }
    }

}