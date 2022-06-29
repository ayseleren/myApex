public class LeadTriggerHandler {
    public static void updateClosedLostDate(List<lead> TriggerNew, List<lead> TriggerOld, Map<id, lead> TriggerOldMap, map<id, lead> TriggerNewMap) {

        Boolean wantToUpdateDate=false;
            for( lead eachLead:TriggerNew){

            if(TriggerOld==null){
            wantToUpdateDate=true;
            }
           
            if(triggerOld!=null){
                
            if(TriggerOldMap.get(eachlead.id).status!=eachlead.status){
    
             wantToUpdateDate=true;
                    
                } 
            } 
            
            if(wantToUpdateDate){
                switch on eachlead.status {

                    when null{
                        eachLead.Created_Date__c=Datetime.now();
                    }

                    when ''{
                        eachLead.Created_Date__c=Datetime.now();
                    }
                    when 'Open - Not Contacted' {
                        eachLead.Created_Date__c=Datetime.now();
                        
                    }
                    when 'Working - Contacted' {
                        eachLead.Contact_Date__c=Datetime.now();
                        
                    }
                    when 'Closed - Converted'{
                        eachLead.Closed_Won_Date__c=Datetime.now();

                    }
                    when'Closed - Not Converted'{
                        eachLead.Closed_Lost_Date__c=datetime.now();
                    }
                }
            }
        }    
    }

    public static void closeReason(List<lead> TriggerNew, List<lead> TriggerOld, Map<id, lead> TriggerOldMap, map<id, lead> TriggerNewMap){
        // if it is insert and status is closed-not converted and reason is empty

        for (lead eachLead : TriggerNew){
            
        
                // if it is update and status is closed-not converted and reason is empty
        if(Trigger.isinsert||Trigger.isupdate && eachLead.Status !=TriggerOldMap.get(eachlead.id).Status){
            
            if(eachlead.status=='Closed - Not Converted'&& eachLead.Closed_Lost_Reason__c==null){
                eachlead.Closed_Lost_Reason__c.addError('please enter your reason to close'); 
            }
         }      
        }
    }    
 }

        
    


