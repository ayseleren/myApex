@istest 
public with sharing class CaseTriggerHandlerTest {
    @istest 
    public static void testcase() {

        contact ct=new contact(LastName='test');
        list<case> caseList=new list<case>();
        for (Integer i = 0; i < 500; i++) {
            case c=new case();
            c.status='New';
            c.Origin = 'Phone';
            c.Subject='test case '+ i;
            c.ContactId=ct.id;
            caseList.add(c);

            
        }
        test.startTest();
        insert caseList;
        test.stopTest();

        list<Task> listTask=[select id, subject, priority, activitydate, whoid, whatid from task];

        for (task tsk : listTask) {
             system.assertEquals('Email', tsk.Subject);
             system.assertEquals('Normal', tsk.Priority);
             system.assertEquals(ct.id, tsk.whoid);
        }
       

        
    }
}

