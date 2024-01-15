// Define an Apex trigger called SendLeadEmail that runs after a Lead is inserted
trigger SendLeadEmail on Lead (after insert) {
    // Create a new list of email messages
    List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>();
    
    // Loop through each Lead that was inserted
    for (Lead lead : Trigger.new) {
        // Create a new email message
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        
        // Set the recipient of the email message
        email.setToAddresses(new String[] { 'atheer.bdaiwi@hotmail.co.uk' });
        
        // Set the subject of the email message
        email.setSubject('New Lead Created');
        
        // Set the body of the email message, including the Lead's details
        email.setPlainTextBody('A new lead has been created with the following details:\n\n' +
                               'First Name: ' + lead.FirstName + '\n' +
                               'Last Name: ' + lead.LastName + '\n' +
                               'Company: ' + lead.Company);
        
        // Add the email message to the list of email messages
        emails.add(email);
    }
    
    // Send the email messages using the Messaging.sendEmail method
    Messaging.sendEmail(emails);
}