public with sharing class OpportunityTriggerHandler5 
{
    public static void validateOpportunityAmount(List<Opportunity> oppList) {
        for (Opportunity opp : oppList) {
            // Check if the amount is less than or equal to 5000
            if (opp.Amount <= 5000) {
                opp.addError('Opportunity amount must be greater than 5000');
            }
        }
    }
}