
map<string, Email_Domain__mdt> allDomains= Email_Domain__mdt.getAll();
set<string> acc=allDomains.keySet();
for(string em:acc){
    system.debug(em);
}
