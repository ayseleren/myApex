public class CaseTriggerHandler {
    public static void createDefaultTask(list<case> TriggerNew) {

        list<Task> listTask=new list<Task>();
        for (case eachCase : TriggerNew) {

            task t=new task();
            t.Subject='Email';
            t.priority='Normal';
            t.WhoId=eachcase.ContactId;
            t.ActivityDate=date.today();
            t.WhatId=eachCase.id;
            listTask.add(t);
        }
        if(!listTask.isEmpty())
        insert listTask;

    }
}
