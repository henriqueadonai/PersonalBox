@isTest
public class TestOpportunityChangeTrigger {
    @isTest static void testCreateAndUpdateOpportunity() {
		insert new Opportunity(Name = 'Sell 100 Widgets',Stagename='Prospecting',CloseDate = Date.today().addMonths(3));
        
        // Call deliver to fire the trigger and deliver the test change event.
        Test.getEventBus().deliver();
        
        // VERIFICATIONS
        // Check that the change event trigger created a task.
        Task[] taskList = [SELECT Id,Subject FROM Task];
        System.assertEquals(0, taskList.size(),'The change event trigger did not create the expected task.');
        
        // Update employee record
        Opportunity[] oppRecords = [SELECT Id,Name,Stagename,CloseDate FROM Opportunity];
        // There is only one test record, so get the first one
        Opportunity opp = oppRecords[0];
        opp.StageName = 'Closed Won';
        update opp;
        
        // Call deliver to fire the trigger for the update operation.
        Test.getEventBus().deliver();
        
        // We should have two tasks now, including one from the first trigger invocation.
        Task[] taskList2 = [SELECT Id,Subject FROM Task];
        System.assertEquals(1, taskList2.size(),
                            'The change event trigger did not create the expected task.');
        
    }


}