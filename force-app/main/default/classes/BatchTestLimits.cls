global with sharing class BatchTestLimits implements Database.Batchable<SObject>, Database.Stateful{
   
    

    global List<SObject> start (Database.BatchableContext info){
        List<Account> listOfMonthlyExp = [SELECT Id, Name FROM Account];
        return listOfMonthlyExp;
    }

    global void execute (Database.BatchableContext context, List<SObject> scope){
        Integer count = 0;       
        for(SObject obj : scope){
            count++;
        }

        for(Integer index = 0; index < 10000000 ; index++){
            count += index;
        }
        System.debug('objects: ' + count);
    }

    global void finish(Database.BatchableContext context){       
    
    }
}