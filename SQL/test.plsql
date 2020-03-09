select instance_name, host_name, version, edition from v$instance;
select con_id, dbid, open_mode, name from v$containers;

create table wishers (id number not null,name varchar2(50) unique not null, password varchar2(50) not null, constraint wishers_pk primary key(id));


BEGIN
    IF TO_CHAR(SYSDATE, 'DAY') = 'TUESDAY'
    THEN
        pay_for_hamburgers;
    ELSE
        borrow_hamburger_money;
    END IF;
END;

BEGIN
    DBMS_OUTPUT.PUT_LINE('hello, world');
END;