declare
cursor prod_cursor is select pid,pname,price from product;
p_pid int;
p_pname varchar(20);
p_pr float;
begin
open prod_cursor;
loop
fetch prod_cursor into p_pid,p_pname,p_pr;
exit when prod_cursor%notfound;
dbms_output.put_line('pid'||p_pid||'pname'||p_pname||'price'||p_pr);
end loop;
close prod_cursor;
end;
/

