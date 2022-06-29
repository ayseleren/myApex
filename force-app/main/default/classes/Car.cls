public  class Car {


    public string carColor=' ';
    public string carName='';
    private integer maxSpeedKMPerHour= 150;

    public void switchOn(){

        system.debug('starting the car.');
  
    }

    public void drive(){

        system.debug('driving '+ carname);
    }

    public void driveAtMaxSpeed(){

        string drivingDesription='driving '+carName+' at '+maxSpeedKMPerHour+ ' km/hr';
        system.debug(drivingDesription);



    }
   
    }