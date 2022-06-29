public class SetDemo {
    public static void citySet() {

        Set<String> cities=new Set<String>();

        cities.add('tokyo');
        cities.add('lisbon');
        cities.add('berlin');
        cities.add('nairobi');
        cities.add('tokyo');

        System.debug('set of cities '+ cities);
    }

    public static void randomIntegerSet(){

        Set<Integer> setInteger=new Set<Integer>();
        setInteger.add(10);
        setInteger.add(15);
        setInteger.add(21);
        setInteger.add(15);

        System.debug(setInteger);
    }

    public static Set<Integer> setFromList( List<Integer>intList){
        Set<integer> intSet = new Set<integer>();

        intSet.addAll(intList);
        return intset;
    }

    public static Set<String> capitalizeSet(Set<String> setString){

        set<String> capSet=new Set<String>();

        for (string eachStr : setString) {

            string Cp=eachStr.capitalize();
            capSet.add(Cp);
        }

        return capSet;
    }
}
