@isTest 
public class ListPracticeTest {
    @istest 
    public static void addPlanetTest() {

        listPractice lp=new listPractice();
        string st= lp.addPlanet('venus', 5, 8);
    
        system.assertEquals('Planet added successfully', st);
        system.assertEquals(1, ListPractice.planetsList.size());

    }
    @istest
    public static void addPlanetTest1() {

        listPractice lp=new listPractice();
        string st1=lp.addPlanet('', 6,8);
       
        system.assertEquals('Planet without name can not be added to the list', st1);
        system.assertEquals(0, ListPractice.planetsList.size());
        
    }
}
