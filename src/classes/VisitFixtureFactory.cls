
/**
 * @author: mhvithoft
 */
@isTest
public class VisitFixtureFactory {

        // Visita__c visit = new Visita__c ();

        // visit.Endereco__c = 'Rua XXX, NNN complemento';
        // visit.Bairro__c = 'Bairro XXX';
        // visit.Endereco__c = 'R XXX';
        // visit.Cep__c = '123456-890';
        // visit.Cidade__c = 'Cidade XXX';

        public static Visita__c buildVisit (String zipCode) {

            Visita__c visit = new Visita__c ();

            visit.Endereco__c = 'Rua XXX, NNN complemento';
            visit.Bairro__c = 'Bairro XXX';
            visit.Endereco__c = 'R XXX';
            visit.Cep__c = zipCode;
            visit.Cidade__c = 'Cidade XXX';

            return visit;
        }

        public static Visita__c create (String zipCode) {

            return create (buildVisit (zipCode));
        }

        public static Visita__c create (Visita__c visit) {

            insert visit;

            return visit;
        }

}