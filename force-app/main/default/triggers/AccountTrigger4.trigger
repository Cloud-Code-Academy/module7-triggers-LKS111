trigger AccountTrigger4 on Account (after insert) 
{
    AccountTriggerHandler4.createDefaultContactOnInsert(Trigger.new);
    
}