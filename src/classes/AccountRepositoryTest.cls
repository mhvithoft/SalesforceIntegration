
/**
 * @author: mhvithoft
 */
@isTest
private class AccountRepositoryTest {

    @isTest
    public static  void findByNameTest () {

        Account accout = AccountFixtureFactory.create ('Marcelo');

        AccountRepository repository = new AccountRepository ();

        List <Account> accounts = repository.findByName ('Marcelo%');

        System.assert (!accounts.isEmpty());        
    }

   @isTest
    public static  void notFindByNameTest () {

        Account accout = AccountFixtureFactory.create ('Marcelo');

        AccountRepository repository = new AccountRepository ();

        List <Account> accounts = repository.findByName ('Joao%');

        System.assert (!accounts.isEmpty());        
    }

}