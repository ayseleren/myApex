public with sharing class RestCallout {

    private static final string HTTP_GET='GET';
    private static final string HTTP_POST='POST';
   



    public static HttpResponse getAnimals() {
        // 1-prepare request
        HttpRequest request=new HttpRequest();
        request.setEndpoint(Integration__mdt.getInstance('Get_Animals').End_Point__c);
        request.setMethod( HTTP_GET);
       
        // 2-prepare http
          Http http=new http();

          // 3.send request,receive response
        HttpResponse response=http.send(request);
        system.debug('status '+response.getStatus());
        system.debug('status code '+ response.getStatusCode());

        // 4.process the response
        if (response.getStatusCode()==200){

            string jsonString=response.getBody();
            system.debug(jsonString);

        } else{
            system.debug(response.getStatus());
        }

        return response;
    }

    public static HttpResponse getUsers() {
        // 1-prepare request
        HttpRequest request=new HttpRequest();
        request.setEndpoint(Integration__mdt.getInstance('Get_Users').End_Point__c);
        request.setMethod( HTTP_GET);
       
        // 2-prepare http
          Http http=new http();

          // 3.send request,receive response
        HttpResponse response=http.send(request);
        system.debug('status '+response.getStatus());
        system.debug('status code '+ response.getStatusCode());

        // 4.process the response
        if (response.getStatusCode()==200){

            string jsonString=response.getBody();
            system.debug(jsonString);

        } else{
            system.debug(response.getStatus());
        }
        return response;
    }

    // private static string GET_DUMMYPOST_ENDPOINT=CalloutInfo__mdt.getInstance('GET_DUMMYPOST').End_Point__c;
    // private static string HTTP_GET='GET';

    public static HttpResponse userCallOut() {
        // 1-prepare request
        HttpRequest request=new HttpRequest();
        request.setEndpoint(Integration__mdt.getInstance('Get_Users').End_Point__c);
        request.setMethod( HTTP_GET);
       
        // 2-prepare http
          Http http=new http();

          // 3.send request,receive response
        HttpResponse response=http.send(request);
        system.debug('status '+response.getStatus());
        system.debug('status code '+ response.getStatusCode());

        // 4.process the response
        if (response.getStatusCode()==200){

            system.debug(response.getBody());
            list<RestWrapperUser> restwrapper=(list<RestWrapperUser>)Json.deserialize(response.getBody(), list<RestWrapperUser>.class);
            system.debug(restwrapper);

            // list<contact>

            list<contact> listPosts=new List<contact>();
            
            for (RestWrapperUser Upost : restwrapper) {
                contact c= new contact();
                
                string[] names=Upost.name.split(' ');
                c.FirstName=names[0];
                c.LastName=names[1];
                c.Email=Upost.email;
                c.Gender__c=Upost.gender;
                c.Status__c=Upost.status;
                listPosts.add(c);   
            }
           insert listPosts;

        } else{
            system.debug(response.getStatus());
        }
        return response;
    }
    public static HttpResponse postAnimals() {
        // 1-prepare request
        HttpRequest request=new HttpRequest();
        request.setEndpoint(Integration__mdt.getInstance('Get_Animals').End_Point__c);
        request.setMethod(HTTP_POST);
        string body='{"name":"mighty moose"}';
        request.setBody(body);
        request.setHeader('Content-Type', 'application/json');
      
        // another example
        list<contact> cntList=[select id, firstname, email, phone from contact limit 100];
        string jsonString=JSON.serialize(cntList);
        request.setBody(jsonString);
        request.setHeader('Content-Type', 'application/json');

        // 2-prepare http
          Http http=new http();

          // 3.send request,receive response
        HttpResponse response=http.send(request);
        system.debug('status '+response.getStatus());
        system.debug('status code '+ response.getStatusCode());

        // 4.process the response
        if (response.getStatusCode()==201){

            //do business logic
            for (contact cnt : cntList) {
                cnt.Status__c='Active';
            }
            update cntList;

        } else{
            system.debug(response.getStatus());
        }

        return response;
    }

    public static HttpResponse getAnimalsWithAuthorization(){

        // 1-prepare request
        HttpRequest request=new HttpRequest();
        request.setEndpoint(Integration__mdt.getInstance('Get_Animals').End_Point__c);
        request.setMethod( HTTP_GET);
        //1.1 add authorization details
        string username='aysel.eren@gmail.com';
        string password='123456';
        Blob detail= Blob.valuof(username+':'+password);
        string authorizationString='BASIC ' + EncodingUtil.base64Encode(detail);
        request.setHeader('authorization', authorizationString)
;       
        // 2-prepare http
          Http http=new http();

        // 3.send request,receive response
        HttpResponse response=http.send(request);
        system.debug('status '+response.getStatus());
        system.debug('status code '+ response.getStatusCode());

        // 4.process the response
        if (response.getStatusCode()==200){

            string jsonString=response.getBody();
            system.debug(jsonString);

        } else{
            system.debug(response.getStatus());
        }

        return response;
    }
}

