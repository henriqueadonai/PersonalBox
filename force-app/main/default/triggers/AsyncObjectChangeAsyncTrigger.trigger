//https://releasenotes.docs.salesforce.com/en-us/summer19/release-notes/rn_change_event_triggers.htm
//https://trailhead.salesforce.com/en/content/learn/modules/change-data-capture
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