@SuppressWarnings('PMD.AvoidGlobalModifier')
global with sharing class ReferralDTO implements RestObject {
    @AuraEnabled
    global String firstName {get; set;}

    @AuraEnabled
    global String lastName {get; set;}  

    @AuraEnabled
    global Integer preferredContactMethodId {get; set;}

    @AuraEnabled
    global string email {get; set;}

    @AuraEnabled
    global string phone {get; set;}

    @AuraEnabled
    global string cellPhone {get; set;}

    @AuraEnabled
    global string zipCode {get; set;}

    @AuraEnabled
    global string city {get; set;}

    @AuraEnabled
    global string campaign {get; set;}

    @AuraEnabled
    global string clientAPIKey {get; set;}

    @AuraEnabled
    global string source {get; set;}

    @AuraEnabled
    global List<CustomFieldDTO> customFields {get; set;}

    @AuraEnabled
    global String objectId {get; set;}

/*  @AuraEnabled
    global string postalCodeId {get; set;} */
}