
/**
 * @author: mhvithoft
 */
@isTest
public class AccoutFixtureFactory {

        public static Account buildAccount (String name) {

            Account account = new Account ();

            account.Name = name;
            account.Phone = '+1499999999999';
            account.BillingAddress = 'R XXX';
        
            return account;
        }

        public static Account create (String name) {

            return create (buildAccount (name));
        }

        public static Account create (Account account) {

            insert account;

            return account;
        }

}