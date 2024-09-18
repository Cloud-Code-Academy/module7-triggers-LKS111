trigger OpportunityTrigger6 on  Opportunity (before delete) 
{
    if (Trigger.isDelete && Trigger.isBefore) {
        OpportunityTriggerHandler6.preventClosedWonDelete(Trigger.old);
    }
}