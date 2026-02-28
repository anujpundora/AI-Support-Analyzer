trigger SupportTicketTrigger on Support_Ticket__c
(before insert, before update, after insert) {

    // ✅ MODIFY RECORD HERE
    if(Trigger.isBefore){
        SupportTicketAIService.analyzeTickets(Trigger.new);
    }

    // ✅ CREATE TASK AFTER SAVE
    if(Trigger.isAfter && Trigger.isInsert){
        SupportTicketAIService.createTasks(Trigger.new);
    }
}