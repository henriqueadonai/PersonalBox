//https://releasenotes.docs.salesforce.com/en-us/summer19/release-notes/rn_change_event_triggers.htm
//https://trailhead.salesforce.com/en/content/learn/modules/change-data-capture
@Istest
public class AsyncObjectChangeAsyncTriggerTest {
    

    private static void AsyncFactory(Integer quantity){
        List<AsyncObject__c> lstAO = new List<AsyncObject__c>();
        Integer count = 0;
        while(count < Quantity){
            AsyncObject__c a = new AsyncObject__c(name = 'Name ' + string.valueof(count) );            
            lstAO.add(a);
            count++;
        }
        upsert lstAO;
    }

    @istest static void CreateAsynRecords(){
        Integer quantity = 10;

        Test.enableChangeDataCapture();
        AsyncFactory(quantity);
        Test.getEventBus().deliver();

        List<AsyncObject__c> lstAO = [SELECT id FROM AsyncObject__c];
        System.assert(lstAO.size() == Quantity);

    }
}
