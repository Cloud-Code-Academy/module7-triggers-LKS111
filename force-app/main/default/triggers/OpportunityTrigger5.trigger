trigger OpportunityTrigger5 on Opportunity (before update) 
{
    if (Trigger.isBefore && Trigger.isUpdate) {
        OpportunityTriggerHandler5.validateOpportunityAmount(Trigger.new);
    }
}