public with sharing class TwoStringConcate {
    public static string concateAndUpperCase(string a, string b) {
        string c=a+' , '+ b;
        c=c.toUpperCase();
        return c;


    }
    public static string concateAndLowerCase(string a, string b) {
        string c=a+' , '+ b;
        c=c.tolowerCase();
        return c;


    }
    public static void concateCase(string a, string b) {
        string c=a+' , '+ b;
        system.debug(c);


    }
}
