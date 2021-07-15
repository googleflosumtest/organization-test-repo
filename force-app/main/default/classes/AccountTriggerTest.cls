@isTest
public with sharing class AccountTriggerTest {
    
    @isTest
    public static void testCreateAccounts(){
        List<Account> accountsForInsert = new List<Account>();
        for(Integer index = 0; index < 200; index++){
            accountsForInsert.add(new Account(Name = 'testaccount' + index, BillingState = 'CA'));
        }
        insert accountsForInsert;
        List<Account> accountsCheck = [SELECT Id, Name, BillingState, ShippingState FROM Account];
        for(Account acc : accountsCheck){
            System.assertEquals(acc.ShippingState, acc.BillingState);
        }
    }
}

// List<Lead> checkLead = [SELECT Id, Name, (SELECT Id, Name FROM Accounts__r)  FROM Lead WHERE Id = '00Q5g000003mc0aEAA'];
// for(Lead l : checkLead){
//     System.debug('obj: ' + l);
//     System.debug('rel: ' + l.Accounts__r);
// }