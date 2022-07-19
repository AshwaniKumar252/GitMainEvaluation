public class AccountUpdateAddressTest {
    @isTest static void address()
    {
        List<Account> accRecord = new List<Account>();
        for(Integer i=0; i < 200; i++) 
        {
            Account acc = new Account(Name='Test Account' + i, BillingState = 'CA',BillingStreet='00'+i,BillingCity='xyzCity');
            accRecord.add(acc);
        }
        
        Test.startTest();
            insert accRecord ;
        Test.stopTest();
        // Please query all record once again to check assert
        List<Account> lstAccount = [select ShippingState,ShippingStreet,ShippingCity from Account];
        for (Account a: lstAccount )
        {
            System.assertEquals('CA', a.ShippingState, 'ERROR');
            System.assertEquals('xyzCity', a.ShippingCity, 'ERROR');
        }
        
    }
}
