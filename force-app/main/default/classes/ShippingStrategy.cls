public class ShippingStrategy {
    
    public static ShippingService getShippingService(Order order){
        //Check where to shipp
        if(order.ShippingCountry == 'United States'){
            return new ShippingImplementation.FedExImplementation();
        }else{
            return new ShippingImplementation.UPSImplementation();
        }
        
    }


}
