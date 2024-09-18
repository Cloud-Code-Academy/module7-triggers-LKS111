trigger AccountTrigger3 on Account (before insert) 
{
    AccountTriggerHandler3.setRatingOnInsert(Trigger.new);
}