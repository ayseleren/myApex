// RankHandler prc=new RankHandler();

// string rank1=prc.rankPrice(1);
// system.debug('rank 1 price is '+ rank1);

// string rank2=prc.rankPrice(2);
// system.debug('rank 2 price is '+ rank2);

// string rank3=prc.rankPrice(3);
// system.debug('rank 3 price is '+ rank3);

// string rank4=prc.rankPrice(4);
// system.debug('rank 4 price is '+ rank4);

// string rank18=prc.rankPrice(18);
// system.debug('rank 18 price is '+ rank18);

RankHandler swtch=new RankHandler();
string when1=swtch.rankPriceSwitch(1);
system.debug('rank 1 price is '+ when1);

string when2=swtch.rankPriceSwitch(2);
system.debug('rank 1 price is '+ when2);

string when3=swtch.rankPriceSwitch(3);
system.debug('rank 1 price is '+ when3);

system.debug('rank 18 price is '+ swtch.rankPriceSwitch(18));
