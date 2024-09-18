trigger AccountTriggers on Account (before insert) 
{
    if (Trigger.isBefore && Trigger.isInsert) {
        AccountTriggerHandler.setDefaultType(Trigger.new);
    }
    
}

