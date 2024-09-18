trigger AccountTrigger2 on Account (before insert) 
{
    AccountTriggerHandlerTwo.copyShippingToBilling(Trigger.new);
}