CREATE OR REPLACE TRIGGER update_delete_audit_d
BEFORE UPDATE OR DELETE ON audit_d
BEGIN
  IF UPPER(TO_CHAR(SYSDATE, 'MON')) = 'SEP' THEN
    RAISE_APPLICATION_ERROR(-20002, 'Cannot update or delete in September');
  END IF;
END;
/
