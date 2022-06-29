public class DatetimeMethodsDemo {
    public void calculateAgeInMonths() {

     System.debug('calculate age in months');

     date birthDate=date.newInstance(1990, 10, 03);
     date todaydate=date.today();

     integer ageInMonths=birthDate.monthsBetween(todaydate);
     System.debug('months in days is '+ ageInMonths);

        //days between

     date birthDate1=date.newInstance(1990, 10, 03);
     date todaydate1=date.today();

     integer ageInDays=birthDate1.daysBetween(todaydate1);
     System.debug('age in days is '+ ageInDays);

    }

    public void printSubscriptionEndDate(){

        date subscriptionStartDate=date.today();
        date subscriptionEndDate=subscriptionStartDate.addDays(1000);

        System.debug('subscription end date is '+ subscriptionEndDate);

        //add year

       integer subscriptionEndYear= subscriptionEndDate.year();

        System.debug('subscription end year is '+ subscriptionEndYear);

        integer subscriptionEndMonth= subscriptionEndDate.month();

        System.debug('subscription end month is '+ subscriptionEndMonth);

      
    
    }

    public void printOfferEndDateTime(){

        datetime dtNow=Datetime.now();
        datetime dtOfferEnd=dtNow.addHours(51);

        system.debug('offer ends in '+ dtOfferEnd);

        date offerEndDate=dtOfferEnd.date();
        System.debug('offer end date is '+ offerEndDate);

        long currentLongTime=dtnow.getTime();
        System.debug(currentLongTime);

    }


    public boolean leapYearCheck(date dt){

        integer year=dt.year();
        boolean lp=date.isLeapYear(year);
        return lp;


    }

}
