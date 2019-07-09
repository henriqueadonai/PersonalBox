public with sharing class SharingRules {
  //Enforcing Sharing Rules
  // All code in this class operates with enforced sharing rules.
    Account a = [SELECT id FROM Account Limit 1 ];
    public SharingRules() {

    }
}

//Class for testing sharerules

//public without sharing class SharingRulesWithout {
 // All code in this class ignores sharing rules and operates
 // as if the context user has the Modify All Data permission.

//}

//public class CInnerWithOut extends SharingRulesWithout {
	    // All code in this class ignores sharing rules because
	    // this class extends a parent class that ignores sharing rules.
	  //}
