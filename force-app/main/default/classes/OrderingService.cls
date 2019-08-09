//https://developer.salesforce.com/blogs/2019/07/breaking-runtime-dependencies-with-dependency-injection.html
public with sharing class OrderingService {
    public void ship(Order order){
        //Do something
        //get the appropriate shipping service
        //We only see the interface here, not the implemention class
        ShippingService shipping = ShippingStrategy.getShippingService(order);
        String trackingNumber = shipping.generateTrackingNumber();

        //Interface = ShippingService
        //ShippingImplementation
        //ShippingStrategy return class with the implementation

        // This approach reduces dependencies but we still have dependencies 
        // between ShippingStrategy and our two shipping implementation classes. 
        // Let’s take it a step further and explore dependency injection to get rid of those dependencies altogether.
    }

    public void shipInjector(Order order){
        // Get the service implementation from a custom metadata type
        // ServiceImplementation.load() runs the SOQL query that retrieves the medatada
        //Service_Implementation__mdt services = ServiceImplementation.load();
        //https://help.salesforce.com/articleView?id=custommetadatatypes_overview.htm
<<<<<<< HEAD
        //ShippingImplementation.load();
=======
        ShippingImplementation.load();
>>>>>>> 7a84e4e98a386bc00330dee2042d2dff3a205bb7

        // Inject the shipping service implementation
        // (services.shipping is either FedExImpl, DHLImpl or any other implementation)
        //ShippingService shipping = (ShippingService.UPSImplementation)Injector.instantiate(ShippingImplementation.UPSImplementation);
        //String trackingNumber = shipping.generateTrackingNumber();


    }

}
