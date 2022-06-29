list<contact> rcrd= [select name, id, account.name from contact where account.type='Prospect'];
system.debug(rcrd);

list<salesforce_ticket__c> rcrd2=[select name, id,salesforce_project__r.status__c from salesforce_ticket__c where salesforce_project__r.status__c='New' ];
system.debug(rcrd2);