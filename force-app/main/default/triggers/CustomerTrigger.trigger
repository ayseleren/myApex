trigger CustomerTrigger on Customer__c (before delete) {

    if(trigger.isBefore&& trigger.isDelete){
        CustomerHandlerTrigger.ActiveCustomerDelete(Trigger.Old);
    }

    

}