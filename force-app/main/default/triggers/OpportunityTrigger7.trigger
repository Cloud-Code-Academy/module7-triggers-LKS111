trigger OpportunityTrigger7 on  Opportunity (before update) 
{

    OpportunityTriggerHandler7.setPrimaryContact(Trigger.new);
}