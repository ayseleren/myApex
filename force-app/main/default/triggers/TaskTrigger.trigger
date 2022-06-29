trigger TaskTrigger on Task (before insert, before update, after insert, after update) {

if(trigger.isAfter && trigger.isUpdate){
    TaskTriggerHandler.NextActivityDate(Trigger.New, Trigger.Old, Trigger.OldMap, Trigger.NewMap);
}
    

}