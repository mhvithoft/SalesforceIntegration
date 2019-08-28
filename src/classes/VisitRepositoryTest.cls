@isTest
public class VisitRepositoryTest { 
    
    @isTest
    public static void findByZipCodeTest () {
        
        Visita__c visit = VisitFixtureFactory.create('122345');

        VisitRepository repository = new VisitRepository();

        List<Visita__c> visits = repository.findByZipCode('122%');
        
        System.assert(!visits.isEmpty());
        System.assertEquals(visit.Id, visits.get(0).Id);
    }

    @isTest
    public static void notFoundByZipCodeTest () {
        
        Visita__c visit = VisitFixtureFactory.create('12345');

        VisitRepository repository = new VisitRepository();

        List<Visita__c> visits = repository.findByZipCode('122%');
        
        System.assert(visits.isEmpty());
    }

}