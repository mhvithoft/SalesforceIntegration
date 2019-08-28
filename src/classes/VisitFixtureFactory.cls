@isTest
public class VisitFixtureFactory {
    
    public static Visita__c buildVisit ( String zipCode ) {
        Visita__c visit = new Visita__c();
        visit.Endereco__c = 'Rua XXX';
        visit.Bairro__c = 'Bairro XXX';
        visit.Cep__c = zipCode;
        visit.Cidade__c = 'Teste';

        return visit;
    }

    public static Visita__c buildVisit ( String zipCode, Account account ) {
        
        Visita__c visit = buildVisit( zipCode ); 
        visit.Conta__c = account.Id;

        return visit;
    }

    public static Visita__c create ( String zipCode, Account account ) {
        return create( buildVisit( zipCode, account ) );
    }

    public static Visita__c create ( String zipCode ) {
        return create( buildVisit( zipCode ) );
    }

    public static Visita__c create ( Visita__c visit ) {
        insert visit;
        return visit;
    }

}