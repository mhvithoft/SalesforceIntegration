@isTest
public class AccountFixtureFactory {

    public static Account buildAccount ( String name ) {
        Account account = new Account();
        account.Name = name;

        return account;
    }

    public static Account create ( String name ) {
        return create( buildAccount( name ) );
    }

    public static Account create ( Account account ) {
        insert account;
        return account;
    }
}