public  class SoqlDemo {
    public static void accountSoql_1() {

        List<Account> listAcc=[select id, name from account where name like '%a%'];

        system.debug('account list is '+listAcc);

        system.debug('number of accounts is = '+listAcc.size());
        
        account acc=[select id, name from account order by CreatedDate desc limit 1];

        system.debug(acc);

    }

    public static void accountSOQL_2(){

        account acc=[select id,name,phone,accountnumber from account order by createddate desc limit 1];

        system.debug('lates account created is '+ acc);
        string accName=acc.name;
        string accPhone=acc.phone;

        system.debug('accName is = '+accName+ ', phone is '+ accPhone);
        system.debug('account number is '+acc.AccountNumber);
        
        
        
            }

    public static void accountSOQL_3(){

        list<Account> listAcc=[select id, name, phone, accountnumber from account order  by createddate desc];

        system.debug('all accounts '+ listAcc);

        for(account eachAccount:listAcc){

            string accName=eachAccount.Name;
            string accphone=eachAccount.phone;

            system.debug('acc name is '+ accName);
            system.debug('acc phone is '+accphone);
            system.debug('account number is '+eachAccount.AccountNumber);
            System.debug('---------------------------');

        }
    }

    public static void soqlDemo_filter(){
        string accNameFilter='Softinnovas';
        List<Account> listAcc=[select name from account where name=:accNameFilter];
        system.debug(listAcc);


    }

    public static void soqlDemo_filter1(string accName){
    
        List<Account> listAcc=[select name from account where name=:accName];
        system.debug(listAcc);



    }public static vid childToParent_soql1(){

        List<Contact> listCnt=[select id, name, account.name from contact where account.industry='energy'];
    }


}
