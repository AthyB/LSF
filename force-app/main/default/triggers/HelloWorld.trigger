trigger HelloWorld on Lead (before update) {
    for (Lead l : Trigger.new) {
        
        l.FirstName = 'Hello';
        l.LastName  = 'World';
        System.debug('Full name = ' + l.FirstName + ' ' + l.LastName);
    }
}