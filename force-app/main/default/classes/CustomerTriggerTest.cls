@istest
public  class CustomerTriggerTest {
    @TestSetup
    
    public static void makeData() {

        List<Customer__c> listCustomer=new List<Customer__c>();
        for (Integer i = 0; i <200; i++) {
            Customer__c c1=new Customer__c();
            
            if(i<100){
                c1.Active__c=true;
            }else{
                c1.Active__c=false;
            } 
            listCustomer.add(c1); 
        }
        insert listCustomer;

        List<Payments__c> listPayment=new List<Payments__c>();
        

          for (customer__c eachcst : activeList) {
            for (Integer i = 0; i < 10; i++) {
                Payments__c pym=new Payments__c();
                pym.Customer__c=eachcst.id;
                if (i<5) {
                    pym.Mode__c='Cash';
                }
                else{
                    pym.Mode__c='Online';
                }
                listPayment.add(pym);    
            }
        }  
        insert listPayment;
    
    }
        @isTest
        static void deleteCustomerTest(){
           List<Customer__c> activeList1=new list<Customer__c>();
           activeList1=[select id from Customer__c];
           Test.startTest();
            delete activeList1;
            Test.stopTest();
            List<Payments__c> PaymentList2=new List<Payments__c>();
          PaymentList2=[select id from Payments__c where Mode__c='Online'];
          
          System.assertEquals(0, PaymentList2.size());
        } 
 

}    