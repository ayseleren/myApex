Map<String,String> mapAcntCurrency =new Map<String,String>();
mapAcntCurrency.put('USA', 'Dollar');
mapAcntCurrency.put('Japan', 'yen');
mapAcntCurrency.put('France', 'Euro');
mapAcntCurrency.put('India', 'Rupees');
mapAcntCurrency.put('India', 'Rupee');
mapAcntCurrency.put('Turkey', 'TL');

system.debug(mapAcntCurrency);

string IndiaCurrency=mapAcntCurrency.get('India');
string TurkeyCurrency=mapAcntCurrency.get('Turkey');

System.debug('India currency is ' + IndiaCurrency);
system.debug('Turkey Currency is '+ TurkeyCurrency);

Set<String> countryKey= mapAcntCurrency.keySet();
System.debug(countryKey);

list<String> valueList=mapAcntCurrency.values();
system.debug(valueList);


Set<String> countriesSet= mapAcntCurrency.keySet();

for(string eachkey: countriesSet){

    string printCountry='Country is '+ eachKey;
    string printCurrency=mapAcntCurrency.get(eachKey);

    printCountry+=', its currency is '+printCurrency;

    system.debug(printCountry);


}

for( string eachCountry:countriesSet){

    string printCountry='country name is '+ eachCountry+ ' its currency is '+ mapAcntCurrency.get(eachCountry);

    system.debug( printCountry);


}