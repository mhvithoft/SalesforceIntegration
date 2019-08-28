
/**
 * @author: mhvithoft
 */
public class AccountRepository {

    public List <Conta> findByName (String name) {
        return [ SELECT Id, Name, Phone, BillingAddress 
                FROM Account 
                WHERE Name LIKE :name
                LIMIT 100 ];

    }

}