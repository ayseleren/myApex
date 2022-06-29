public  class test1 {
    public void host() {

        // string compare='Welcome to the Salesforce world, apex is host in this world.';

        // boolean sentences=compare.contains('HOST');
        // boolean sentences2=compare.containsIgnoreCase('HOST');

        // system.debug(sentences);
        // system.debug(sentences2);

        // string  favorite1='My favourite part is apex';
        // string favorite2='MY FAVOURITE PART IS APEX';

        // boolean four=favorite1.equals(favorite2);

        // system.debug('is favorite1 equals to favorite to?= '+ four);


        date atd= date.newInstance(2004, 06, 24);
        date current=date.today();

       Integer experience=atd.daysBetween(current);
        system.debug('Days of experience of the employee is '+ experience);


        Integer experience2=atd.monthsBetween(current);
        system.debug('Months of experience of the employee is '+ experience2);
    }
}
