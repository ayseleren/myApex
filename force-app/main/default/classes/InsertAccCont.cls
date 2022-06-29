public with sharing class InsertAccCont {
    public static void InsertAccCont1(string accName, string cntname) {
        account a =new account();
        a.name=accName;
        insert a;

        contact c=new contact ();
        c.LastName=cntname;
        c.accountid=a.id;
        insert c;


    }
}

