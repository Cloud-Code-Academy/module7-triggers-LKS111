public with sharing class AccountTriggerHandlerTwo 
{
    public static void copyShippingToBilling(List<Account> accounts) {
        for (Account acc : accounts) {
            // Check if Shipping Address fields are not empty before copying
            if (!String.isBlank(acc.ShippingStreet) && !String.isBlank(acc.ShippingCity)
                && !String.isBlank(acc.ShippingState) && !String.isBlank(acc.ShippingPostalCode)
                && !String.isBlank(acc.ShippingCountry)) {
                    
                acc.BillingStreet = acc.ShippingStreet;
                acc.BillingCity = acc.ShippingCity;
                acc.BillingState = acc.ShippingState;
                acc.BillingPostalCode = acc.ShippingPostalCode;
                acc.BillingCountry = acc.ShippingCountry;
            }
        }
    }
}