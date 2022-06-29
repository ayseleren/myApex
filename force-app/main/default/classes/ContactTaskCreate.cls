public with sharing class ContactTaskCreate {
    public static void createTask(string cntlastname) {

        string queryCont='select id, name, lastname from contact where lastname like\'%'+cntlastname+'%\'';

        list<contact> listCnt=database.query(queryCont);
        
        list<task> taskList=new list<task>();
    for (contact cnt : listCnt) {
        task t=new task();
        t.whoid=cnt.id;
        
        t.Subject='Email';
        t.Description='A task a contact';
        t.status='Not Started';
        taskList.add(t);
        
    }
    if(!taskList.isEmpty()){
        insert taskList;
    }
}
    @testVisible 

    private static void createOpps(list<contact> listContact){

        List<Opportunity> opps=new List<Opportunity>();
        for(contact c:listContact){
            opportunity o=new Opportunity();
            o.name='opp for ct: '+c.name;
            o.StageName='New';
            o.CloseDate=date.today();
            o.ContactId=c.id;
            opps.add(o);
        }

        if(!opps.isEmpty()){
            insert opps;
        }
    }
}
