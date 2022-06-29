public  class ListDemo {
    // public static void candidatesList() {

    //     list<String> listCandidates = new List<String>();
    //     listCandidates.add('aysel');
    //     listCandidates.add('levent');
    //     listCandidates.add('kerem');
    //     listCandidates.add('bahadir');
    //     listCandidates.add('ayse');

    //    string indexvalue3=listCandidates.get(2);

    //     system.debug('candidates of EREN family are  '+listCandidates);

    // }


    public static string candidatesList(integer indx) {

        list<String> listCandidates = new List<String>();
        listCandidates.add('aysel');
        listCandidates.add('levent');
        listCandidates.add('kerem');
        listCandidates.add('bahadir');
        listCandidates.add('ayse');
        system.debug('candidates of EREN family are  '+listCandidates);
            
        string retrnString='';

        if(indx>=0 && indx<listCandidates.size()){

         retrnString=listCandidates[indx];
        }else{

        retrnString='no value';
        }

        return retrnString;

    }

    public static void randomIntegerList(){

        List<Integer> listInteger = new List<Integer>();

        listInteger.add(35);
        listInteger.add(30);
        listInteger.add(13);

        integer index3value =listInteger.get(2);
        integer index2value=listInteger.get(1);

        System.debug('index 3 value is '+index3value);

        System.debug('index 2 value is '+ index2value);

        System.debug('list of random integers are '+ listInteger);
    }

    public static void allCats(){
        cat falconsCat=new cat('lemon', 'yellow');
        cat vitapcat=new cat('simba', 'brown');

        list<cat> cats=new list<cat>();
        cats.add(falconsCat);
        cats.add(vitapcat);

        System.debug('all cats are '+cats);
    }
    public static void iterateIntegerList(){

        List<Integer> listInteger = new List<Integer>();

        listInteger.add(5);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(12);

        for (integer eachInteger: listInteger){

            System.debug(eachInteger);
        }


    }






}
