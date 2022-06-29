public  class Calculator {
    public static void welcomeMessage() {

       System.debug('welcome to apex calc');

    }
     
     public static void printNewMessage(string msg){


         System.debug(msg);

     }

     public static void printNewMessage(string msg, date dt){

         System.debug(msg);
         System.debug(dt);

     }

     public static integer add(integer a, integer b){

             integer sum=a+b;

             return sum;


     }

     public static integer add(integer a, integer b,integer c){

         integer sum=a+b+c;

         return sum;
     }
    
    

    public static integer add(List<Integer> intList){

        integer sum=0;
        for(integer eachInt:intList){

            System.debug('eachInt   ='+eachint);
            sum+=eachInt;
            System.debug('each sum is = '+sum);
        }

        System.debug(sum);
        return sum;

    }
}

