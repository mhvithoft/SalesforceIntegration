public with sharing class VisitTH  extends TriggerHandler {

    List<Visita__c> newVisits;
    Map<Id, Visita__c> oldVisits;

    AccountEnricher accountEnricher;

    VisitFilter filter;

    public VisitTH ()
    {
        this ((List<Visita__c>)Trigger.new, (Map<Id, Visita__c>)Trigger.oldMap);

    }

    public VisitTH (List<Visita__c> newVisits, Map<Id, Visita__c> oldVisits)
    {
        this.newVisits = newVisits;
        this.oldVisits = oldVisits;

        accountEnricher = new AccountEnricher ();
        filter = new VisitFilter ();

    }

    override
    public void afterInsert ()
    {
        System.debug( JSON.serialize (newVisits));
    }

    override
    public void afterUpdate ()
    {
        System.debug( JSON.serialize (newVisits));
        System.debug( JSON.serialize (oldVisits));
    }

    override
    public void beforeDelete ()
    {
        System.debug( JSON.serialize (oldVisits));
    }

    override
    public void afterDelete ()
    {
        System.debug( JSON.serialize (oldVisits));
    }
    
    
    public void enrichAccountWithLastExecutedDate ()
    {
        List<Visita__c> executedVisits = filter.filterJustExecutedVisitForAccount (newVisits, oldVisits);

        AccountEnricher.enrichWithLastExecutedVisit (executedVisits);
    }

}