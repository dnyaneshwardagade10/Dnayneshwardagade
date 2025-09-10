CREATE OR REPLACE TRIGGER insertmaster
AFTER INSERT ON client_master
FOR EACH ROW
BEGIN
  INSERT INTO insertbackup (srno, name)
  VALUES (:NEW.srno, :NEW.name);
END;
/

