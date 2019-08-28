/**
 * @author : Matheus
 */

public class VisitRepository {

    public List<Visita__c> findByZipCode (String zipCode) {
        return [
            SELECT Id, RecordType.Name, RecordType.DeveloperName, Name, Cep__c
            FROM  Visita__c
            WHERE Cep__c LIKE :zipCode
            LIMIT 100
        ];
    }

}