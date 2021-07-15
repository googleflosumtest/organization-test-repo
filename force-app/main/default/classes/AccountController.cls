public with sharing class AccountController {
    @AuraEnabled
    public static List<Account> getAllActiveAccounts() {
      return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
    }

    @AuraEnabled
    public static List<Account> getAllAccounts() {
      return [SELECT Id, Name, Active__c FROM Account LIMIT 10000];
    }
  }