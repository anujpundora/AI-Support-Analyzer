public class SupportTicketAIService {

    // AI ANALYSIS
    public static void analyzeTickets(List<Support_Ticket__c> tickets){

        for(Support_Ticket__c ticket : tickets){

            if(ticket.Description_Field__c != null){

                String descriptionText =
                    ticket.Description_Field__c.toLowerCase();

                if(descriptionText.contains('payment')){
                    ticket.AI_Analysis__c = 'Payment Issue Detected';
                    ticket.Priority_Field__c = 'High';
                }
                else if(descriptionText.contains('login')){
                    ticket.AI_Analysis__c = 'Login Problem';
                    ticket.Priority_Field__c = 'Medium';
                }
                else{
                    ticket.AI_Analysis__c = 'General Query';
                    ticket.Priority_Field__c = 'Low';
                }
            }
        }
    }


    public static void createTasks(List<Support_Ticket__c> tickets){

        List<Task> tasksToInsert = new List<Task>();

        for(Support_Ticket__c ticket : tickets){

            Task t = new Task();

            t.Subject = 'Follow up Support Ticket';
            t.Priority = 'High';
            t.Status = 'Not Started';

            // ✅ CORRECT RELATION
            t.WhatId = ticket.Id;

            tasksToInsert.add(t);
        }

        if(!tasksToInsert.isEmpty()){
            insert tasksToInsert;
        }
    }
}