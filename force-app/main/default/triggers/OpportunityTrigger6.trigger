trigger OpportunityTrigger6 on  Opportunity (before delete) 
{
    OpportunityTriggerHandler6.preventClosedWonDelete(Trigger.old);
}