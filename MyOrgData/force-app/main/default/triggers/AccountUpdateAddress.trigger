trigger AccountUpdateAddress on Account (before insert, before update) {
    if(Trigger.isbefore){
		
        for(Account accRecord : trigger.new){
            if(accRecord.billingCountry != null){
                accRecord.ShippingCountry = accRecord.billingCountry;
            }
            if(accRecord.billingState != null){
                accRecord.ShippingState = accRecord.billingState;
            }
            if(accRecord.billingCity != null){
                accRecord.ShippingCity = accRecord.billingCity;
            }
            if(accRecord.ShippingPostalCode != null){
                accRecord.ShippingPostalCode = accRecord.BillingPostalCode;
            }
        }
    }
}