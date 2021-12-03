--liquibase formatted sql
--changeset techgeeknext:inset-employee-01
INSERT INTO employee VALUES(01, 'User1');
INSERT INTO employee VALUES(02, 'User2');
INSERT INTO employee VALUES(03, 'User3');
INSERT INTO employee VALUES(04, 'User4');
--rollback DELETE FROM employee WHERE id in (01,02,03,04);
