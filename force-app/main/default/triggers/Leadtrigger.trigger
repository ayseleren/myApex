trigger Leadtrigger on Lead (before insert, after insert, before update, after update) {
    // 1.when status of lead is changed(or created) to 'closed-not converted'----set closed lost date with timestamp

    if(trigger.isBefore){

        LeadTriggerHandler.updateClosedLostDate(Trigger.New, Trigger.Old, Trigger.OldMap, Trigger.NewMap);

    }

    // 2.when status is changed closed lost enter closed lost reason

    if(trigger.isBefore){

        LeadTriggerHandler.closeReason(Trigger.New, Trigger.Old, Trigger.OldMap, Trigger.NewMap);
    }

}