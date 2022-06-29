DatetimeMethodsDemo dtm=new DatetimeMethodsDemo();
// dtm.calculateAgeInMonths();
// dtm.printSubscriptionEndDate();
// dtm.printOfferEndDateTime();

date newDate=date.today();
boolean newDateLYcheck=dtm.leapYearCheck(newDate);
System.debug(newDateLYcheck);

date newDate2=date.newInstance(2020, 01, 01);
Boolean newDateLYcheck2=dtm.leapYearCheck(newDate2);
System.debug(newDateLYcheck2);