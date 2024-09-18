trigger AccountTrigger3 on Account (before insert) 
{
    if (Trigger.isBefore && Trigger.isInsert) 
    {
        AccountTriggerHandler3.setRatingOnInsert(Trigger.new);
    }
}