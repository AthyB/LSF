trigger DedupeReminder on Account (after insert) {

    for (Account acc : Trigger.New){
        
        Case c = new Case();
        c.OwnerId   = '0054L000002tK1K';
        c.Subject   = 'Dedupe this account PLEASE';
        c.AccountId = acc.Id; 
        insert c;
    }          
}