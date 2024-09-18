trigger AccountTriggers on Account (before insert) 
{

    AccountTriggerHandler.setDefaultType(Trigger.new);
    
}

