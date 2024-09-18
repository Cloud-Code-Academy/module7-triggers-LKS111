trigger OpportunityTrigger7 on  Opportunity (before update) 
{
    if (Trigger.isUpdate) 
    {
        OpportunityTriggerHandler7.setPrimaryContact(Trigger.new);
    }
}