@SuppressWarnings('PMD.AvoidGlobalModifier')
global with sharing class ExpertAssignmentDTO implements RestObject {
    @AuraEnabled
    global String firstName {get; set;}

    @AuraEnabled
    global String lastName {get; set;}

    @AuraEnabled
    global String clientAPIKey {get; set;}

    @AuraEnabled
    global String objectId {get; set;}
}