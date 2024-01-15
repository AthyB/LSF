trigger AccountTrigger on Account (before insert, before update) {
    AccountTriggerHandler.beforeInsertLogic(Trigger.new);
}