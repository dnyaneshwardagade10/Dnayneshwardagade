BEGIN
  FOR rec IN (SELECT pid, price FROM product WHERE price < 5000) 
  LOOP
    UPDATE product
    SET price = rec.price * 1.10
    WHERE pid = rec.pid;
  END LOOP;

  COMMIT;

  DBMS_OUTPUT.PUT_LINE('Prices updated.');
END;
/
