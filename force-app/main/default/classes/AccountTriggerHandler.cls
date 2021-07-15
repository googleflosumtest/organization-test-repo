public with sharing class AccountTriggerHandler {
    
    public static void CreateAccounts(List<Account> accountsList){
        for(Account acc : accountsList){
            acc.ShippingState = acc.BillingState;
        }
    }

    public static void checkAccount(List<Account> accountsList){
        for(Account acc : accountsList){
            if(acc.Description.contains('CHECK_EXCEPTION')){
                throw new TriggerException(String.valueOf('CHECK_EXCEPTION'));
            }
        }
        // Database.executeBatch(new BatchTestLimits());
        // Database.executeBatch(new BatchTestLimits());
        // Database.executeBatch(new BatchTestLimits());
        // Database.executeBatch(new BatchTestLimits());
        // Database.executeBatch(new BatchTestLimits());
        // Database.executeBatch(new BatchTestLimits());
        // Database.executeBatch(new BatchTestLimits());
        // Database.executeBatch(new BatchTestLimits());
        // Database.executeBatch(new BatchTestLimits());
        // Database.executeBatch(new BatchTestLimits());
        // Database.executeBatch(new BatchTestLimits());
        // Database.executeBatch(new BatchTestLimits());
        // Database.executeBatch(new BatchTestLimits());
        // Database.executeBatch(new BatchTestLimits());
    }

    public class TriggerException extends Exception {
    }
}