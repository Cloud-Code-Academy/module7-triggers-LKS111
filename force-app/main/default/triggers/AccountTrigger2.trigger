trigger AccountTrigger2 on Account (before insert) 
{
    if (Trigger.isBefore && Trigger.isInsert) {
        AccountTriggerHandlerTwo.copyShippingToBilling(Trigger.new);
    }

}