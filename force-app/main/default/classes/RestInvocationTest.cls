@RestResource(urlMapping='/testAPI/*')
global with sharing class RestInvocationTest {
    @HttpPost
    global static String doPost(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String reqBody = req.requestBody.toString();
        return  reqBody;
    }
}