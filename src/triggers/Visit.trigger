
trigger Visit on Visita__c (before insert, before update, before delete, after insert, after update, after delete, after undelete) 
{
    
    new VisitTH ().run();    
}