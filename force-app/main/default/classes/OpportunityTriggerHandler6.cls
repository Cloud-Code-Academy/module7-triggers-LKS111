public with sharing class OpportunityTriggerHandler6 
{
    public static void preventClosedWonDelete(List<Opportunity> oppList) {
        // Collect Account Ids from Opportunities
        Set<Id> accountIds = new Set<Id>();
        for (Opportunity opp : oppList) {
            accountIds.add(opp.AccountId);
        }

        // Query related accounts to check their industries
        Map<Id, Account> accountMap = new Map<Id, Account>([SELECT Id, Industry FROM Account WHERE Id IN :accountIds]);

        // Iterate through opportunities and apply the deletion logic
        for (Opportunity opp : oppList) {
            Account relatedAccount = accountMap.get(opp.AccountId);

            // Check if the opportunity is Closed Won and the account's industry is Banking
            if (opp.StageName == 'Closed Won' && relatedAccount != null && relatedAccount.Industry == 'Banking') {
                opp.addError('Cannot delete closed opportunity for a banking account that is won');
            }
        }
    }
}