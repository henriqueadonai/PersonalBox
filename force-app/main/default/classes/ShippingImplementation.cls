public class ShippingImplementation {
    public class HDLImplementation implements ShippingService{
        public String generateTrackingNumber(){
            return 'DHL-XXXX';
        }
    }

    public class FedExImplementation implements ShippingService{
        public String generateTrackingNumber(){
            return 'FED-XXXX';
        }
    }

    public class UPSImplementation implements ShippingService{
        public String generateTrackingNumber(){
            return 'UPS-XXXX';
        }
    }

    public class CanadaPostImplementation implements ShippingService{
        public String generateTrackingNumber(){
            return 'CanadaPost-XXXX';
        }
    }

}
