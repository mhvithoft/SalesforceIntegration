public class AccountEnricher {
    
    AccountRepository repository;

    public AccountEnricher ()
    {
        repository = new AccountRepository ();

    }

    public  List <Account> enrichWithLastExecutedVisit (List<Visita__c> executedVisits)
    {
        Map <Id, Account> accounts = new Map<Id, Account> ();

        for (Visita__c visit : executedVisits)
        {
            if (visit.Conta__c != null )
            {
                Account account = new Account (Id = visit.Conta__c, LastRealizedVisitDate__c = visit.Agenda__c);

                accounts.put (visit.Conta__c, account);

            }
        }

        return repository.save (accounts.values ());

    }

}