trigger OpportunityTrigger5 on Opportunity (before update) 
{
    OpportunityTriggerHandler5.validateOpportunityAmount(Trigger.new);
}