@isTest
public class AccountRepositoryTest {
    @isTest
    public static void findByZipCodeTest () {
        
        Account account = AccountFixtureFactory.create('teste');

        AccountRepository repository = new AccountRepository();

        List<Account> accounts = repository.findByName('te%');
        
        System.assert(!accounts.isEmpty());
        System.assertEquals(account.Id, accounts.get(0).Id);
    }
}