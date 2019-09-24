//https://releasenotes.docs.salesforce.com/en-us/summer19/release-notes/rn_change_event_triggers.htm
//https://trailhead.salesforce.com/en/content/learn/modules/change-data-capture
//Comments:
// It supports change events for the most popular standard objects including Account, Contact, Lead, User, Order, OrderItem, Product2, and others.

trigger AsyncObjectChangeAsyncTrigger on AsyncObject__ChangeEvent (after insert) {
    system.debug('Async Change Event');
    List<AsyncObject__ChangeEvent> lstAsync = Trigger.new;
    
    Set<String> aoIds = new Set<String>();

    for(AsyncObject__ChangeEvent async : lstAsync){
        List<string> recordIds = async.ChangeEventHeader.getRecordIds();
        aoIds.addAll(recordIds);
    }

    //Perform heavy computation operation which may take a lot of time
}

/*
{
   "schema":"TIOb-jG_qRb2ucSBIdByMA",
   "payload":{
     "ChangeEventHeader":{
       "entityName":"Employee__c",
       "recordIds":[
          "a00xx0000004GvqAAE"
       ],
       //Can have the operation that caused the change--CREATE/UPDATE/DELETE/UNDELETE
       "changeType":"CREATE",
       //Who initiate the change
       "changeOrigin":"com/salesforce/api/soap/44.0;client=GetCloudy",
       "transactionKey":"00059b44-a6c7-ffa7-af68-8a455868ed30",
       "sequenceNumber":1,
       "commitTimestamp":1533160499000,
       "commitUser":"005xx000001SwSiAAK",
       "commitNumber":356619267
    },
    "First_Name__c":"Jane",
    "Last_Name__c":"Smith",
    "Name":"e-100",
    "Tenure__c":2.0,
    "LastModifiedDate":"2018-08-01T21:54:58Z",
    "OwnerId":"005xx000001SwSiAAK",
    "CreatedById":"005xx000001SwSiAAK",
    "CreatedDate":"2018-08-01T21:54:58Z",
    "LastModifiedById":"005xx000001SwSiAAK",
   },
   "event":{
     "replayId":1
   }
}*/


}

