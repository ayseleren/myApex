public  class primitiveDataTypeDemo {

    public void printBasicDataType(){

        string batchName= 'Falcons 6';
        integer totalCandidates =40;
        boolean isAdminCompleted =true;
        Decimal decValue=27.01;
        Long longValue= 214575835415L;
        object obj='this is a string';
        object obj2=10;
        ID id= '0018c00002Eu3TNAAZ';


       system.debug ('batch name is ' +' '+batchName);
       system.debug('tottal # of candidates is'+ ' '+ totalCandidates);
       system.debug ('admin completed?' + isAdminCompleted);
       system.debug('Decimal = '+ decValue);
       system.debug('Long: '+ longValue);
       system.debug('object 1: '+ obj);
       system.debug(' object 2: '+ obj2);
       system.debug('account ID is = '+id);


    }
   
}