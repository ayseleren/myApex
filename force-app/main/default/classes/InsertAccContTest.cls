@istest 
public with sharing class InsertAccContTest {
    @istest 
    public static void InsertAccContTest1() {
        InsertAccCont.InsertAccCont1('test acc name', 'test contact name');
        
        // soql

        List<Account> acc=[select id, name from account where name ='test acc name' ];
        list<contact> cont=[select lastname,accountid from contact where lastname='test contact name'];

        system.assertEquals(1, acc.size());
        system.assertEquals('test acc name', acc[0].name);
        system.assertEquals(acc[0].id, cont[0].accountid);


    }
}
