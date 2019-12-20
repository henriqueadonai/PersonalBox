//Salesforce Spring ’20 Release Notes 
//Note: This release is in preview. 
//Features described here don’t become generally available until the latest general availability date that Salesforce announces for this release. 
//Before then, and where features are noted as beta, pilot, or developer preview, we can’t guarantee general availability within any particular time frame or at all.
//Make your purchase decisions only on the basis of generally available products and features.



public with sharing class GenericCollection {

    //@InvocableMethod
    public static List<Results> GetFirstFromCollection(List<Requests> requestList){
        List<SObject> inputCollection = requestList[0].inputCollection;
        Boolean enforceSingle = requestList[0].enforceSingleMember;

        Sobject outputMember = inputCollection[0];

        //Create a results object to hold the return values
        Results response = new Results();

        //Add the return values to the Results object
        response.outputMember = outputMember;

        //Wrap the Results object in a List container
        //(an extre added to allow this interface to also support bulkification)

        List<Results> responseWrapper = new List<Results>();
        responseWrapper.add(response);

        return responseWrapper;
    }

    public class Requests{
        //@InvocableVariable(required=true)
        public List<SObject> inputCollection;

        //@InvocableVariable
        public Boolean enforceSingleMember;
    }

    public class Results{
        //@InvocableVariable
        public SObject outputMember;
    }



}
