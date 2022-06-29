public  class CustomerHandlerTrigger {
    public static void ActiveCustomerDelete( list<Customer__c> TriggerOld){
            set<id> setIds=new set<id>();
            set<id> inactiveIds=new set<id>();

        for(Customer__c eachCst:TriggerOld){

            if (eachCst.active__c==true) {
                setIds.add(eachCst.id);
                
            }else{
                inactiveIds.add(eachCst.Id);
            }
        }

        if(!setIds.isEmpty()){
            List<Payments__c> PaymentList=[select id from Payments__c where Customer__c in: setIds]; 
        
            if(!PaymentList.isEmpty()){
            delete PaymentList;
            }
        }

        if(!inactiveIds.isEmpty()){
            List<Payments__c> PaymentList1=[select id from Payments__c where Customer__c in: inactiveIds and Mode__c='Online'];
           
            if(!PaymentList1.isEmpty())  {

                delete PaymentList1;
            }
        }
    }
   
}
