trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {

    if(trigger.isBefore && trigger.isupdate){

        
        for (contact eachcnt :trigger.new) {

        if (eachcnt.LastName!=trigger.oldMap.get(eachcnt.id).LastName) {
                 system.debug('last name is changed- '+trigger.oldMap.get(eachcnt.id).LastName+ ' is changed to '+ eachcnt.LastName);

                 eachcnt.LeadSource='web';

                
                
            }
            
        }

    }








    // if (trigger.isbefore) {

    //     system.debug('we are in before trigger');

    //     if(trigger.isInsert){

    //         system.debug('before insert trigger called');
    //     }

    //     if(trigger.isUpdate){
    //         system.debug('before update trigger is called');
    //     }
        
    // }

    // if (trigger.isafter) {

    //     system.debug('we are in after trigger');

    //     if(trigger.isInsert){

    //         system.debug('after insert trigger called');
    //     }

    //     if(trigger.isUpdate){
    //         system.debug('after update trigger is called');
    //     }
        
    // }



}