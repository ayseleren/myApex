trigger AccountTrigger on Account ( before insert, before update,after insert, after update) {

    








    // map<id, account> trgNewMap = trigger.newMap;
    // map<id, account> trgOldMap = trigger.oldMap;

    // if(trigger.isBefore &&  trigger.isInsert){
    //     system.debug('=======BEFORE INSERT=========');
    //     system.debug('Before insert OLD MAP = ' + trgOldMap);
    //     system.debug('Before insert NEW MAP = ' + trgNEWMap);
    // }
    // if(trigger.isAfter &&  trigger.isInsert){
    //     system.debug('=======AFTER INSERT=========');
    //     system.debug('AFter insert OLD MAP = ' + trgOldMap);
    //     system.debug('AFter insert NEW MAP = ' + trgNEWMap);
    // }

    // if(trigger.isBefore &&  trigger.isUpdate){
    //     system.debug('=======BEFORE UPDATE=========');
    //     system.debug('Before update OLD MAP = ' + trgOldMap);
    //     system.debug('Before update NEW MAP = ' + trgNEWMap);
    // }
    // if(trigger.isAfter &&  trigger.isUpdate){
    //     system.debug('=======AFTER UPDATE=========');
    //     system.debug('AFter update OLD MAP = ' + trgOldMap);
    //     system.debug('AFter update NEW MAP = ' + trgNEWMap);
    // }






















    // if (trigger.isAfter) {

    //     if(trigger.isUpdate){

    //         for(account oldacc:trigger.old){

    //             system.debug('old acc id= '+oldacc.id+ ' ,old acc name is '+ oldacc.name);
    //         }

    //         for(account newacc:trigger.new){

    //             system.debug('old acc id= '+newacc.id+ ' ,old acc name is '+ newacc.name);
    //         }
    //     }    
    // }

    // if (trigger.isAfter) {

    //     if(trigger.isupdate){
            
    //     list<account> accList=trigger.new;
    //     set<id> accIdSet=new set<id>();

    //          for(account eachacc:accList){

    //          accIdSet.add(eachacc.id);  
    //         } 
    //         system.debug(accIdSet);
    //     } 
          
    // }











    // if(trigger.isBefore && trigger.isInsert){
    //     system.debug('trigger.old before insert= ' + trigger.old);
    //     }

    //     if (trigger.isAfter && trigger.isInsert) {
    //         system.debug('trigger.old after insert= '+ trigger.old);
    //     }
    //     if (trigger.isAfter && trigger.isUpdate) {
    //         system.debug('trigger.old after update= '+ trigger.old);

    //     }

    //     if(trigger.isBefore && trigger.isUpdate){
    //          system.debug('trigger.old before update= ' + trigger.old);
    //             }






    // if(trigger.isBefore && trigger.isUpdate){
    //     system.debug('trigger.new before update= ' + trigger.new);

    //     for(account acc:trigger.new){

    //         system.debug('account id is= '+ acc.id+ ' , account name is '+ acc.name+ ', acc created date ='+ acc.createddate+ 'last modified date '+ acc.LastModifiedDate);
    //     }

    //     }

    //     if (trigger.isAfter && trigger.isUpdate) {
    //         system.debug('trigger.new after update= '+ trigger.new);

    //         for(account acc:trigger.new){

    //             system.debug('account id is= '+ acc.id+ ' , account name is '+ acc.name+ ', acc created date ='+ acc.createddate+ 'last modified date '+ acc.LastModifiedDate);
    //         }
    //     }




            // if(trigger.isBefore && trigger.isInsert){
            // system.debug('trigger.new before insert= ' + trigger.new);
            // }

            // if (trigger.isAfter && trigger.isInsert) {
            //     system.debug('trigger.new after insert= '+ trigger.new);
            // }




    // if (trigger.isAfter && trigger.isinsert) {
    //         system.debug('trigger.new after insert'+ trigger.new);
            
    //         list<account> newAccounts=trigger.new;

    //         system.debug('total account inserted' + newAccounts.size());

    //         for(account acc:newAccounts){

    //             system.debug('account id is= '+ acc.id+ ', account name is '+ acc.Name);
    //         }
    //     }

        



    // if (trigger.isAfter) {
    //     system.debug('trigger.new after insert/update'+ trigger.new);
        
    // }



    // System.debug('before insert account trigger fired');
    // System.debug('before update account trigger fired');

    // if (trigger.isBefore && trigger.isInsert) 

    //     system.debug('before insert  trigger called');
        
    // if (trigger.isAfter && trigger.isInsert)

    //     System.debug('after insert  trigger called too.');

    // if (trigger.isBefore && trigger.isUpdate) 

    //     System.debug('before update trigger called.yeeeh');

    // if(trigger.isAfter && trigger.isUpdate)
     
    //     system.debug('after update  trigger called. Yeeeeh');
       
        
  

    

    // system.debug('before insert account trigger fired');
    // system.debug('after insert trigger');

    // if(trigger.isBefore) System.debug('before insert trigger');
    // if(trigger.isAfter)System.debug('after insert trigger');

}



