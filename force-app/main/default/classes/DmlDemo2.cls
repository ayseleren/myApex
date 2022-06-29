public class DmlDemo2 {
    public static void DmlMultipleRecordUpdate_right() {

        list<account> listAcc=[select id, name,Description from account order by createddate desc limit 5];

        List<Account> updateAccounts=new list<account>();

        for(account eachacc:listAcc){

            eachacc.name=eachacc.name+'via B.O';
            eachacc.Description='update via bulk DML';
            updateAccounts.add(eachacc);

        }

        if(!updateAccounts.isEmpty()) update updateAccounts;

    }
}
