@istest 
public with sharing class ContactTaskCreateTest {

   @TestSetup
   static void makeData(){

      list<contact> cntList=new list<contact>();
      for (Integer i = 0; i < 1000; i++) {
       contact cnt=new contact();
       cnt.LastName='Testcontact test'+i;
       cntList.add(cnt);

      }
      insert cntList;
      
   }
   @istest 
    public static void taskCreateTest() {

       //data preparation
       contact cnt=new contact();
       cnt.LastName='Testcontact test';
       insert cnt;

       ContactTaskCreate.createTask('Testcontact test');
       list<task> taskList=[select id, subject, WhoId from task where whoid= :cnt.id ];
       system.assert(taskList.size()==1);
       system.assertEquals('Email', taskList[0].subject);
       system.assertNotEquals('phone', taskList[0].subject);
    }

    @istest 
    public static void taskCreateTest2() {
      list<contact> cntList=[select id, name, lastname from contact];
       //2.1.test.starttest
       Test.startTest();

       //3.call method
       ContactTaskCreate.createTask('Testcontact test');

       //2.2 test.stoptest
       Test.stopTest();

       //4.assertion
       list<task> taskList=[select id, subject, WhoId from task where whoid in :cntList ];
       system.assert(taskList.size()==1000);

       for (task tsk :taskList) {
         system.assertEquals('Email', tsk.subject);
        system.assertNotEquals('phone', tsk.subject);
       }
      
    }

    @istest 

    public static void taskOpportunity() {

      List<Contact> cntList=[Select id, name, lastname from contact];
      //2.1.test.starttest
      Test.startTest();

      //3.call method
      ContactTaskCreate.createOpps(cntList);

      //2.2 test.stoptest
      Test.stopTest();

      //4.assertion
      list<Opportunity> oppList=[select id, StageName, CloseDate, ContactId from Opportunity where ContactId in :cntList ];
      system.assert(oppList.size()==1000);

      for (Opportunity opp :oppList) {
        system.assertEquals('New',opp.StageName);
      }
     

   }

}
