
@istest
public with sharing class TwoStringConcateTest {
    @istest 
    public static void testConcate() {
        string r= TwoStringConcate.concateAndUpperCase('hi', 'test');
        system.debug(r);
        system.assertEquals('HI , TEST', r);

    }

    @istest 
    public static void testConcate1() {
        string r= TwoStringConcate.concateAndLowerCase('TEST', 'HI');
        system.debug(r);
        system.assertNotEquals('TEST', 'HI', r);

    }
    @istest 
    public static void testConcate2() {
        TwoStringConcate.concateCase('hi', 'test');
       

    }


}
