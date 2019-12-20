
//Remember to actived Change Event Data in the Setup to this piece of work
trigger OpportunityChangeTrigger on OpportunityChangeEvent (after insert) {
    List<Task> tasks = new List<Task>();

    for (OpportunityChangeEvent event : Trigger.New) {
        // Get some event header fields
        EventBus.ChangeEventHeader header = event.ChangeEventHeader;
        if (header.changetype == 'UPDATE') {
            
            System.debug('List of all changed fields:');
            for (String field : header.changedFields) {
                if (null == event.get(field)) {
                    System.debug('Deleted field value (set to null): ' + field);
                } else {
                    System.debug('Changed field value: ' + field + '. New Value: '
                                 + event.get(field));
                }
            }
            
            if(event.isWon){
                Task tk = new Task();
                tk.Subject = 'Follow up on won opportunities:' +
                    header.recordIds;
                tk.OwnerId = header.CommitUser;
                tasks.add(tk);                
            } 

        }
    }
    if (tasks.size() > 0) {
        system.debug('Adding tasks');
    	insert tasks;    
    }
    

}