--liquibase formatted sql
--changeset techgeeknext:inset-branch-01
INSERT INTO branch VALUES(1, 'User1',01);
INSERT INTO branch VALUES(2, 'User2',02);
INSERT INTO branch VALUES(3, 'User3',03);
INSERT INTO branch VALUES(4, 'User4',04);
--rollback DELETE FROM branch WHERE id in (1,2,3,4);

--changeset techgeeknext:insert-branch-employee-02
INSERT INTO employee VALUES(5, 'User5');
INSERT INTO branch VALUES(5, 'User4',05);
--rollback DELETE FROM branch WHERE id in (5);
