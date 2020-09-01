@SuppressWarnings('PMD.AvoidGlobalModifier')
global with sharing class CustomFieldDTO implements RestObject{
    
    @AuraEnabled
    global String key {get; set;}

    @AuraEnabled
    global String value {get; set;}
}