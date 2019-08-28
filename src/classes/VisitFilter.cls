public class VisitFilter {

    public List<Visita__c> filterExecutedVisitForAccount (List<Visita__c> newVisits, Map<Id, Visita__c> oldVisits)
    {
        List<Visita__c> executedVisits = new List<Visita__c> ();

        for (Visita__c visit : newVisits)
        {
            if (visit.Conta__c != null )
            {

                Visita__c oldVisit = oldVisits.get (visit.Id);

                if (visit.Status__c == 'REALIZADA')
                {
                    executedVisits.add (visit);
                }

            }

        }

        return executedVisits;

    }

    public List<Visita__c> filterJustExecutedVisitForAccount (List<Visita__c> newVisits, Map<Id, Visita__c> oldVisits)
    {
        List<Visita__c> executedVisits = new List<Visita__c> ();

        for (Visita__c visit : newVisits)
        {
            if (visit.Conta__c != null )
            {

                Visita__c oldVisit = oldVisits.get (visit.Id);

                if (visit.Status__c == 'REALIZADA' && oldVisit.Status__c != 'REALIZADA')
                {
                    executedVisits.add (visit);
                }

                if (visit.Status__c == 'REALIZADA' && oldVisit == null)
                {
                    executedVisits.add (visit);
                }
               
            }

        }

        return executedVisits;

    }


}