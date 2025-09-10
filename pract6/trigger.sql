CREATE OR REPLACE TRIGGER updateclient01
BEFORE UPDATE OR DELETE ON client_master
FOR EACH ROW
BEGIN
  INSERT INTO audit_d (srno, name)
  VALUES (:OLD.srno, :OLD.name);
END;
/
