DECLARE
  CURSOR product_cursor(p_price_1 NUMBER) IS 
    SELECT pid, pname, price 
    FROM product 
    WHERE price > p_price_1;

  p_pid   product.pid%TYPE;
  p_pname product.pname%TYPE;
  p_price product.price%TYPE;

  v_input NUMBER;  
BEGIN
  v_input := &enter_price;

  DBMS_OUTPUT.PUT_LINE('Starting to fetch products above price ' || v_input || '...');

  OPEN product_cursor(v_input);
  LOOP
    FETCH product_cursor INTO p_pid, p_pname, p_price;
    EXIT WHEN product_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('pid: ' || p_pid || ', name: ' || p_pname || ', price: ' || p_price);
  END LOOP;
  CLOSE product_cursor;

  DBMS_OUTPUT.PUT_LINE('Done fetching products.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/





