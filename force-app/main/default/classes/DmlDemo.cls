public  class DmlDemo {
    public static void dmlInsertDemo_stndObj() {

        Account acc=new account();
        acc.name='DML new account';
        acc.site='www.softinnovas.com';
        acc.Description='salesforce bootcam';

       insert acc;
        System.debug(acc);

    }

    public static void dmlInsertDemo_cstmObj(){

        salesforce_project__c sp=new  salesforce_project__c();
        sp.project_name__c='teach DML to falcons';
        sp.Description__c='all 50% are great learners';
        insert sp;

    }

    public static void dmlUpdateDemo_1(){

        Account acc=new Account();
        acc.name='softInnovas';
        insert acc;

        system.debug('inserted '+ acc);
        acc.name='salesforce Inc';

        update acc;
        System.debug('updates '+ acc);

    }

    public static void dmlUpdateDemo_2(){

        account acc=[select id, name from account where name='Soft innovas' order by Createddate desc limit 1];
        acc.name='hello world 2';
        update acc;

        system.debug ('updates account is '+ acc);

    }

    public static void dmUpdateDemo4(){

        Account acc=[select id, name from account where name='hello world 2' limit 1];

        contact cnt=new contact();
        cnt.LastName='biden';
        cnt.AccountId=acc.Id;
        insert cnt;


    }

    public static void dmlMultipleRecordInsert_right(){

        List<Account> listAcc= new List<Account>();

        account acc1=new account();
        acc1.name='bulk acc 1';
        listAcc.add(acc1);

        account acc2=new account();
        acc2.name='bulk acc 2';
        listAcc.add(acc2);

        account acc3=new account();
        acc3.name='bulk acc 3';
        listAcc.add(acc3);


        insert listacc;


    }

    public static void dmlMultipleRecordInsert_right1(){

        List<Account> listAccount= new List<Account>();

        account acc=new account();
        acc.name='softInnovas-30 APR v';
        acc.AccountNumber='ACSI-1';
        acc.Active__c='yes';
        listAccount.add(acc);

        for (Integer i = 1; i < 15; i++ ) {

            Account acct2=new account();
            acct2.name='SoftInnovas 30 April v'+ i;
            acct2.AccountNumber='ACSI-1'+i;
            acct2.Active__c='yes';
            listAccount.add(acct2);

        }

        system.debug('size of list '+ listAccount.size());

        if(!ListAccount.isEmpty()){

            insert listAccount;


        }






    }
}
