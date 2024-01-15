@isTest
public class AppleWatchTest {

    @isTest
    static void insertOpportunity(){
        Opportunity oppty = new Opportunity();
        oppty.Name        = 'Test Opportunity';
        oppty.StageName   = 'Closed Won';
        oppty.CloseDate   = Date.today();
        insert oppty;

        Task task        = new Task();
        task.Subject     = 'Test Task';
        task.Description = 'Test Description';
        task.Priority    = 'High';
        task.WhoId       = oppty.AccountId;
        task.WhatId      = oppty.Id;
        insert task;
    }
}