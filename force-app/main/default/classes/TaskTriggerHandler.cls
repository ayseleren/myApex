public with sharing class TaskTriggerHandler {
    public static void NextActivityDate(List<Task> TriggerNew, List<Task> TriggerOld, Map<id, Task> TriggerOldMap, map<id, Task> TriggerNewMap) {
        //inserted

        set<id> leadId=new set<id>();
        for (task  t : TriggerNew){
        if(t.WhoId!=null && t.WhoId.getSobjectType().getDescribe().getName()=='Lead'&& t.ActivityDate!=null){

             
             if(trigger.isinsert){
                 
                     leadId.add(t.WhoId);
                 }
            
            if(trigger.isupdate){
                if( t.activityDate!=TriggerOldMap.get(t.id).activityDate||t.status!=TriggerOldMap.get(t.id).Status){

                    leadId.add(t.WhoId);
                }
            }
        }
            
                //t.who id is for lead (we should check, it may be for contact)
                //t.whoid is not null
                
            if(leadId.isEmpty()){
                return;
            }
            list<lead> leadList=[select id, name, Next_Activity_Date__c, (select id, activityDate,status from Tasks where status!='Completed' and status!='Deferred' order by activitydate ASC limit 1) from lead where id in:leadId];
            list<lead> updateList=new list<lead>();
            for(lead l:leadlist){
                if(l.tasks!=null && !l.tasks.isEmpty()){

                    task t1=l.Tasks[0];
                    if(t1.ActivityDate>=date.today()){
                        l.Next_Activity_Date__c=t.ActivityDate;
                    }else{
                        l.Next_Activity_Date__c=null;
                    }
                }else{
                    l.Next_Activity_Date__c=null;
                }
                updateList.add(l);
            }

            if(!updateList.isEmpty()){
                update updateList;
            }
                
            }
        }


    }

