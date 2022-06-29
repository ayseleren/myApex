public class primitiveDataTypeDemo2 {

    public void printNewDateTime(){

        Date newDate=date.today();
        time newTime=time.newInstance(9, 8, 5,6);

        Datetime dt1=Datetime.newInstance(newDate,newTime);
        system.debug('dt1 is '+dt1);
        
        Datetime dt2=Datetime.newInstance(2005, 10, 08);
         system.debug ( 'dt2 is :'+ dt2);

         Datetime currentDT=Datetime.now();
         System.debug('current DT is '+ currentDT);

         Datetime dt6=datetime.now().addHours(-4);
         System.debug(dt6);

         Datetime dt5=Datetime.newInstanceGmt(2022, 04, 11, 8, 44, 30);
         System.debug('gmt= '+ dt5);

         Datetime d4=Datetime.newInstance(2022, 04, 11, 08, 44, 30);
          System.debug(d4);

          long longtime=12318256410000L;
          datetime dt7=Datetime.newInstance(longtime);

          System.debug(dt7);

          datetime dt8=Datetime.newInstance(0);
          System.debug('dt8= '+dt8);

          long longtime2=1352836489999L;
          Datetime dt9=Datetime.newInstance(longtime2);
          System.debug('dt9= '+dt9);


        
    }

    public void printNewTime(){

        Time myTime=Time.newInstance(10, 25, 2, 30);
        Time meTime=Time.newInstance(8, 12, 32, 22);

        system.debug('time1 is '+ myTime);
        system.debug('time2 is '+ meTime);

    }




    public void printNewDate() {

        System.debug('create new date instance');

        Date newDate=Date.newInstance(2022, 04, 08);
        Date newDate2=Date.newInstance(2020, 03, 16);
        date todayDate=Date.today();

        system.debug('new date is '+ newDate);
        system.debug('new date2 is '+ newDate2);
        system.debug('todays date is '+ todayDate);
 

    }
}
