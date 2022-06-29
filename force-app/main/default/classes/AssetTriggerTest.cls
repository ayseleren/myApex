@istest 
public with sharing class AssetTriggerTest {
    @istest
    public static void testAssetTrigger() {

        //testing for github

        account acc=new account(name='test');
        insert acc;
        list<asset> assetList=new list<asset>();
        for (Integer i = 0; i < 1000; i++) {
            asset a=new asset();
            a.Name='test asset';
            a.AccountId=acc.id;
            assetList.add(a);  
        }
        insert assetList;

    }
}
