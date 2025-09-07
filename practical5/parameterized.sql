declare
  cursor product_cursor(p_price_1 number) is 
    select pid, pname, price 
    from product 
    where price > p_price_1;

  p_pid   product.pid%type;
  p_pname product.pname%type;
  p_price product.price%type;
begin
  dbms_output.put_line('starting to fetch products above price p_price_1...');

  open product_cursor(50);
  loop
    fetch product_cursor into p_pid, p_pname, p_price;
    exit when product_cursor%notfound;
    dbms_output.put_line('pid: ' || p_pid || ', name: ' || p_pname || ', price: ' || p_price);
  end loop;
  close product_cursor;

  dbms_output.put_line('done fetching products.');
exception
  when others then
    dbms_output.put_line('an error occurred: ' || sqlerrm);
end;
/


