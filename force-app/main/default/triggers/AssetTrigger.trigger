trigger AssetTrigger on Asset (After insert) {
    if (trigger.isAfter) {
        AssetTriggerHandler.countTriggerRun++;
        AssetTriggerHandler.numberOfRecordsInserted+=trigger.size;
        
    }

}