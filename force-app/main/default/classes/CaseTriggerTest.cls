@istest 
public with sharing class CaseTriggerTest {
    @istest 
    public static void testcase() {

        list<case> caseList=new list<case>();
        for (Integer i = 0; i < 500; i++) {
            case c=new case();
            c.status='New';
            c.Origin = 'Phone';
            c.Subject='test case '+ i;
            caseList.add(c);

            
        }
        test.startTest();
        insert caseList;
        test.stopTest();

        integer casesCount=[select COUNT() from case]; 
        system.assert(casesCount==500);
    }
}
