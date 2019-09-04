//https://bigassforce.com/field-keysets
public with sharing class BuildSet {
    public BuildSet() {
        Set<id> ids = new Map<Id,Account>([SELECT id,name FROM account]).keyset();
        system.debug(ids);


        //Step 1 – GROUP BY to collect unique values
        //Step 2 – Alias the field as Id
        //Step 3 – AggregateResult inherits from sObject

        Set<String> names = new Map<String,SObject>([SELECT name Id FROM account GROUP BY Name]).keyset();
        system.debug(names);

        Set<String> emails = new Map<String,SObject>([SELECT Email Id FROM Contact WHERE Email != null GROUP BY Email]).keySet();
        system.debug(emails);

        //This way doesn't work properly
        //Set<String> namesaccount = new Map<String,account>([SELECT name Id FROM account GROUP BY Name]).keyset();
        //system.debug(namesaccount);

    }


}
