public class StringDemoClass {
    public void stringMethod1() {

        string sessionDescription='learning string methods in apex language.';

        integer lengthOfStr=sessionDescription.length();
        
        System.debug('length of string is '+ lengthOfStr);

        string sessionDesriptionInCaps=sessionDescription.toUpperCase();

        system.debug('in caps='+sessionDesriptionInCaps);
        system.debug(' we can write our sentence in upper case as '+ sessionDesriptionInCaps+ ' And its length is ' + lengthOfStr);

        boolean containsApex=sessionDescription.contains('apex');
        system.debug(containsApex);

        boolean containsApex2=sessionDesriptionInCaps.containsIgnoreCase('apex');
        system.debug(containsApex2);

        boolean containSalesforce=sessionDescription.contains('salesforce');
        system.debug(containSalesforce);

        string apex='apex';
        string ap='APEX';
        boolean apexCheck=apex.equals(ap);

        System.debug(apexCheck);

    }
}

