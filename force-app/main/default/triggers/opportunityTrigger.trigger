trigger opportunityTrigger on opportunity (after update) {

    // if(trigger.isBefore && trigger.isUpdate){

    //     for (opportunity eachOpp : trigger.new) {

    //         if (eachOpp.CloseDate<trigger.oldMap.get(eachOpp.id).CloseDate) {

    //             eachOpp.addError('close date can not be update to less that what already provided');
                
    //         }
            
    //     }

   
    // } 

    if(trigger.isAfter && trigger.isUpdate){
        OpportunityTriggerHandler.ValidationForOpportunity(Trigger.New, Trigger.Old, Trigger.OldMap, Trigger.NewMap);

        
    }

   


}