trigger AccountTrigger4 on Account (after insert) 
{
    if (Trigger.isAfter && Trigger.isInsert) {
        AccountTriggerHandler4.createDefaultContactOnInsert(Trigger.new);
    }
}