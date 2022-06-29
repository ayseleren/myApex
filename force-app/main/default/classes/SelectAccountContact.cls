public with sharing class SelectAccountContact {
    public static void selectAccCont(string accName, string contName) {

        List<Account> accs=[select id, name, phone, website from account where name= :accName];
        List<Opportunity> opp=new List<Opportunity>();
        for(account a:accs){
            string s=a.name;
            Opportunity op=new Opportunity();
            op.AccountId=a.id;
            op.name='opp of '+ a.Name;
            op.StageName='New';
            op.CloseDate=date.today();
            opp.add(op);
            System.debug('a name'+ s);
        }
        insert opp;
        

        List<Contact> contacts=[select id, accountid, lastname from contact where lastname= :contName];
        for (contact c :contacts) {
            string s=c.lastname;
             system.debug('c name '+ s);
        }
       
        
    }
}
