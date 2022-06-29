@istest 
public class LeadTriggerHandlerTest {
    @TestSetup
    static void makeDataLead(){
        list<lead> listLead=new list<lead>();
        for (Integer i = 0; i < 200; i++) {

            lead l=new lead();
            l.lastname='Weekdays';
            l.Company='Lazy Boy';
            l.status='Open - Not Contacted';
            listLead.add(l);
            
        }
        insert listLead;
        
    }
    @istest 
    private static void testUpdateDates1() {
        

        list<lead> listLead1=new list<lead>();
        for (Integer i = 0; i < 100; i++) {

            lead l=new lead();
            l.lastname='Weekdayyyyyyy '+i;
            l.Company='Lazy Boyyyyyy';
            l.Status='Open-Not Contacted';
            listLead1.add(l);
            
        }
        test.startTest();
        insert listLead1;
        test.stopTest();

        list<lead> LeadList= [select id, lastname, Created_Date__c, Closed_Won_Date__c from lead];
        for (lead l : LeadList) {
            // system.assert(l.Created_Date__c != null);
            system.assertNotEquals(datetime.now(), l.Closed_Won_Date__c);
        }

    }
    @istest 
   private static void updateLead2(){

    list<lead> leadList2=[select id, lastname, company, status from lead];


    for (lead l:leadList2){
        l.status='Working - Contacted';
    }
    update leadList2;

   list<lead> LeadList= [select id, lastname, Contact_Date__c, Closed_Won_Date__c from lead];
        for (lead l : LeadList) {
            system.assert(l.Contact_Date__c != null);
            system.assertNotEquals(datetime.now(), l.Closed_Won_Date__c);
        }
  

}
@istest 
private static void updateLead3(){

 list<lead> leadList2=[select id, lastname, company, status from lead];


 for (lead l:leadList2){
     l.status='Closed - Converted';
 }
 update leadList2;

list<lead> LeadList= [select id, lastname, Contact_Date__c, Closed_Won_Date__c from lead];
     for (lead l : LeadList) {
         system.assert(l.Closed_Won_Date__c != null);
         system.assertNotEquals(datetime.now(), l.Closed_Won_Date__c);
     }


}
@istest 
private static void updateLead4(){

 list<lead> leadList2=[select id, lastname, company, status from lead];


 for (lead l:leadList2){
     l.status='Closed - Not Converted';
     l.Closed_Lost_Reason__c='nothing';
     }
 update leadList2;

list<lead> LeadList= [select id, lastname, Contact_Date__c, Closed_Lost_Date__c from lead];
     for (lead l : LeadList) {
         system.assert(l.Closed_Lost_Date__c != null);
         system.assertNotEquals(datetime.now(), l.Closed_Lost_Date__c);
     }


}



    
}
