public class AccountRepository {
    public List<Account> findByName (String name) {
            return [
                SELECT Id, Name
                FROM  Account
                WHERE Name LIKE :name
                LIMIT 100
            ];
    }

    public List<Account> save (List<Account> accounts) {
            update accounts;
            return accounts;
    }

}