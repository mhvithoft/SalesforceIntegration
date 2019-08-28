
/**
 * @author: mhvithoft
 */
@isTest
private class VisitRepositoryTest {

    @isTest
    public static  void findByZipCodeTest () {

        Visita__c visit = VisitFixtureFactory.create ('12345-6789');

        VisitRepository repository = new VisitRepository ();

        List <Visita__c> visits = repository.findByZipCode ('123%');

        System.assert (!visits.isEmpty());        
    }

    @isTest
    public static  void notFindByZipCodeTest () {

        Visita__c visit = VisitFixtureFactory.create ('12345-6789');

        VisitRepository repository = new VisitRepository ();

        List <Visita__c> visits = repository.findByZipCode ('111%');

        System.assert (visits.isEmpty());        
    }


}