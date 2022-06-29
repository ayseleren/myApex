public with sharing class OpportunityTriggerHandler {
    public static void ValidationForOpportunity(List<Opportunity> TriggerNew, List<Opportunity> TriggerOld, Map<id, Opportunity> TriggerOldMap, map<id, Opportunity> TriggerNewMap) {

            

        set<id> oppId=new set<id>();
        for(opportunity eachOpp:TriggerNew ){

            if(eachOpp.StageName!=TriggerOldMap.get(eachOpp.id).StageName && (eachOpp.StageName=='Closed Lost' || eachOpp.StageName=='Closed Won')){
                oppId.add(eachOpp.Id);

            }
        }


        list<opportunity> oppList=[select id, stagename, (select id,status from Tasks where status!= 'Completed' and status!= 'Deferred' limit 1) from opportunity where id in:oppId ];

        for(opportunity opp:oppList){
        
            if (opp.tasks.size()>0 && opp.tasks!=null) {
               opportunity oppTriggerNew=TriggerNewMap.get(opp.id);
               oppTriggerNew.stagename.addError('cannot close opportunity. first close all tasks');
                
            }

        }
    }
}
