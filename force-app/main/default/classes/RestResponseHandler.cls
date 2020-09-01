global with sharing class RestResponseHandler{

    public Status            status      {get; set;}
    public List<RestObject>  payload     {get; set;}
    public RestObject        result      {get; set;}
    
    public class Status {
        public String message {get; set;}
        public String code    {get; set;}
        public String detail  {get; set;}
    }

    public RestResponseHandler(String code){
        status = new Status();
        this.status.code = code;
        this.status.message = getCodeMessage(code);
    }

    public RestResponseHandler(List<RestObject> payload, String code){
        status = new Status();
        this.status.code = code;
        this.status.message = getCodeMessage(code);
        this.payload = payload;
    }

    public RestResponseHandler(List<RestObject> payload, String code, RestObject result){
        status = new Status();
        this.result = result;
        this.status.code = code;
        this.status.message = getCodeMessage(code);
        this.payload = payload;
    }

    public RestResponseHandler(List<RestObject> payload, String code, String detail){
        this(payload, code);
        this.status.detail = detail;
    }

    public static RestResponseHandler actionNotFound(){
        return new RestResponseHandler('404');
    }

    private String getCodeMessage(String code){
        Map<String, String> codes = new Map<String, String>();
        codes.put('200', 'OK');
        codes.put('201', 'Created');
        codes.put('203', 'Resource Updated Successfully');
        codes.put('204', 'Resource Deleted Successfully');
        codes.put('400', 'Bad Request');
        codes.put('401', 'Unauthorized');
        codes.put('403', 'Forbidden');
        codes.put('404', 'Not Found');
        codes.put('500', 'Server Error');
        codes.put('ERR', 'Code not recognized');
        if(codes.containsKey(code)){
            return codes.get(code);
        }
        else{
            return codes.get('ERR');
        }
    }
}