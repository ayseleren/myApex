public  class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;

    public void printCandidate(){

        System.debug('Candidate Name is '+ Name+ '( ' + Gender + ')');
        System.debug('Company name is '+ CompanyName);

    }


 public static  void printCandidatesInfoSt () {

    System.debug('company name is '+ CompanyName);
   
     
 }
}
