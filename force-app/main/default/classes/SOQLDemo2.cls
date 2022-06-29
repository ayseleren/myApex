public  class SOQLDemo2 {
    
//     public static void childToParent_soql1(){

//     List<Contact> listCnt=[select id, name, account.name from contact where account.industry='energy'];

//     system.debug(listCnt);

//         for (Contact eachContact: listCnt) {

//             string accName=eachContact.account.name;
//             system.debug('contact name is '+eachContact.name+ ' , its account name  is '+ accName);
            
//         }
// }

public static void sampleSoql(){

    list<account> accountWithOpplist=[select name, annualrevenue,(select name, amount from opportunities where stagename='closed won') from account ];

    for (account eachAcc : accountWithOpplist) {

        System.debug('account name is '+eachAcc.name+ ' ,annual revenue is '+ eachAcc.AnnualRevenue);

        List<Opportunity> eachAccOpps=eachAcc.Opportunities;

        for (opportunity opp : eachAccOpps) {

            system.debug('opp name '+ opp.name+ ',opp amount '+opp.amount);            
        }

        system.debug('---------------------------------');


        
    }
}
}
