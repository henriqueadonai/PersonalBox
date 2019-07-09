//https://trailhead.salesforce.com/en/content/learn/modules/platform-developer1-maintenance-spring19/learn-whats-new-for-platform-developers-sp19
public with sharing class DevSpring {
    public DevSpring() {

    }


    public void userManagementSystem(){
        //Auth Namespace
        //String id = System.UserManagement.initSelfRegistration​(Auth.VerificationMethod.PASSWORD, user);
        //Auth.VerificationResult res = System.UserManagement.verifySelfRegistration​(Auth.VerificationMethod.PASSWORD, id, '123456', null);        
        //if(res.status == SUCCESS){
            //redirect
            //system.debug('logLevel, o');
        //}

    }

    //The System.OrgLimit class contains methods that return the name, current value, and maximum limit for an instance.
    public void orgLimitSystem(){
        List<account> lstacc = [SELECT id,name FROM account];
        System.debug('Testing anonymos - VS Code');
        List<System.OrgLimit> limits = OrgLimits.getAll();
        for (System.OrgLimit aLimit: limits) {
            System.debug('Limit: ' + aLimit.getName());
    	    System.debug('Max Limit is: ' + aLimit.getLimit());
            System.debug('Usage Value is: ' + aLimit.getValue());
    	}

    }


    public void sobjectSystem(){
        Account s = new Account();
        s.name = 'Test';
        system.debug(s.isSet(s.name));
    }

    public void formatString(){
        String template = '{0} was last updated {1}';
        List<Object> parameters = new List<Object> {'Universal Containers', DateTime.newInstance(2018, 11, 15) };
        String formatted = String.format(template, parameters);
        System.debug ('Newly formatted string is:' + formatted);
    }

}
