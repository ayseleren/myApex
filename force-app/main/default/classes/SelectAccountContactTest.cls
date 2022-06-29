@istest 
public with sharing class SelectAccountContactTest {
    @istest 
    public static void selectAccContactsTest() {
        //prepare data

        account a =new account();
        a.name='Any account';
        insert a;

        contact c=new contact ();
        c.LastName='Literally';
        c.accountid=a.id;
        insert c;

        SelectAccountContact.selectAccCont('Any account','Literally');
      List<Opportunity> opps=[select id, name, accountid from Opportunity where name= :'opp of Any account'];
      system.assert(opps.size()==1);
      system.assertEquals(a.id, opps[0].accountid);
        
    }
}
