public with sharing class EmailComponentController {
    public Id accntId {get;set;}
    public List<SearchRecord__c> getserchRecord()
    {
        List<SearchRecord__c> srchRec;
        srchRec = [SELECT Name,AssociatedContact__c,Response__c FROM SearchRecord__c WHERE AssociatedAccount__r.Id =: accntId];
        return srchRec;
    }
}