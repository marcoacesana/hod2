@RestResource(urlMapping='/expertAssignment/*')
global with sharing class ExpertAssignmentRestController {
    @HttpGet
    global static void doGet(){
        RestRequest request = RestContext.request;
        String recordId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
    }
    @HttpPost
    global static String doPost(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String reqBody = req.requestBody.toString();
        return  reqBody;
    }
    @HttpDelete
    global static void doDelete(){
        RestRequest request = RestContext.request;
        String recordId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
    }
    @HttpPut
    global static void doPut(String name,String recordId){
    }
    @HttpPatch
    global static void doPatch(){
        RestRequest request = RestContext.request;
        String recordId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
    }
}