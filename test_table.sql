create table test(
    name_test varchar(50) not null,
    phone_test int,
    id_fabricator int not null,
    foreign key (id_fabricator) references fabricator(id)
);

ALTER TABLE test ALTER COLUMN phone_test TYPE bigint;

drop table test;


insert into test (name_test, phone_test, id_fabricator) values ('Marabel', '3017375414', 1);
insert into test (name_test, phone_test, id_fabricator) values ('Elie', '4689364992', 2);
insert into test (name_test, phone_test, id_fabricator) values ('Sigrid', '7867748905', 3);
insert into test (name_test, phone_test, id_fabricator) values ('Ninette', '2629418439', 4);
insert into test (name_test, phone_test, id_fabricator) values ('Lorilyn', '6936113468', 5);
insert into test (name_test, phone_test, id_fabricator) values ('Cleavland', '4745531914', 6);
insert into test (name_test, phone_test, id_fabricator) values ('Helene', '2002168578', 7);
insert into test (name_test, phone_test, id_fabricator) values ('Claudette', '7287212090', 8);
insert into test (name_test, phone_test, id_fabricator) values ('Bengt', '4987640801', 9);
insert into test (name_test, phone_test, id_fabricator) values ('Steffane', '8698960575', 10);

alter table if exists test
add column if not exists id_test int;
select *from test;


create sequence if not exists public.test_id_test_seq
increment 1
start 101
minvalue 101
maxvalue 2147483647
cache 1;

alter sequence public.test_id_test_seq
owner to postgres;

update test set id_test =nextval('test_id_test_seq');

alter table test alter column id_test set default nextval('test_id_test_seq');



alter table if exists test
add column if not exists cost_test int;
select *from test;

alter table if exists test
drop column if exists cost_test;

alter table test drop constraint test_id_fabricator_fkey;

alter table if exists test
add constraint test_id_fabricator_fkey
foreign key (id_fabricator) references  fabricator(id);


update test set name_test = 'Ramil' where id_test =101;
update test set phone_test='77777' where name_test='Ramil';