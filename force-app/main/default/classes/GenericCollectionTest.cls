@istest
public class GenericCollectionTest {
    @istest static void GetFirstFromGenericCollection(){

        Integer quantityAccount = 10;
        GenerateAccount(quantityAccount);
        List<Account> lstAcc = [SELECT ID,name FROM ACCOUNT];
        system.assert(quantityAccount == lstAcc.size());

        GenericCollection.Requests request = new GenericCollection.Requests();
        request.inputCollection = lstAcc;
        request.enforceSingleMember = true;
        List<GenericCollection.Requests> lstRequests = new List<GenericCollection.Requests>();
        lstRequests.add(request);
        

        List<GenericCollection.Results>  lstresults =  GenericCollection.GetFirstFromCollection(lstRequests);
        system.assert(lstresults.size() == 1);
        
    }

    public static void GenerateAccount(Integer quantity){

        List<Account> lstAcc = new List<Account>();
        for(integer i = 0; i < quantity; i++){
            lstAcc.add(new Account(name = 'name' + i));
        }
        insert lstAcc;
    }
}
