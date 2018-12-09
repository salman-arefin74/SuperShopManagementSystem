set serveroutput on;
create or replace procedure update_accounts(acid in accounts.account_id%type, amount in accounts.total_amount%type)
is
begin
	update accounts
	set accounts.total_amount = amount where accounts.account_id = acid;

end update_accounts;
/