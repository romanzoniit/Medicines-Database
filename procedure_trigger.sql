create or replace procedure new_medicament( name_med         varchar(50),
                                            type_name_med    varchar(50),
                                            cost_med         numeric,
                                            id_fab_med       integer,
                                            name_drugstore   varchar(50))
as $$
    declare
        drug_id integer:=0;
        id_of_med integer:=0;
        id_of_type integer:=0;
    begin
        if not exists(select type.name from type
        where type_name_med=type.name)
            then
            begin
            insert into type (name)
        values (type_name_med)
        returning id into id_of_type;
            end;
            else
            begin
               select type.id from type where type.name = type_name_med limit 1 into id_of_type;
            end;
        end if;

        if exists( select fabricator.id from fabricator
        where id_fab_med = fabricator.id::INTEGER)
        then
            begin
                insert into medicament (name, cost, id_type, id_fabricator)
                values (name_med,cost_med,id_of_type,id_fab_med)
                returning id into id_of_med;

                if exists(select drugstore.name from drugstore
        where name_drugstore=drugstore.name)
            then
            begin
               select drugstore.id from drugstore
               where drugstore.name = name_drugstore limit 1 into drug_id;
                insert into avail_medicament(id_med,id_drugstore,count)
                values (id_of_med,drug_id,null);
                end;
        end if;
                end;
            end if;
    end;
    $$
LANGUAGE plpgsql;


drop procedure new_medicament(name_med varchar, type_med integer, cost_med numeric, id_fab_med integer);

call new_medicament('test','ALPROSTADIL',7777,100);
call new_medicament('test','TestProcedureType',7777,4,'Rite Aid Corporation');
call new_medicament('test2',7,7777,5);


select * from  medicament;
select * from avail_medicament;
select * from fabricator;
select * from type;
select * from drugstore;

drop table medicament cascade ;


select setval('medicament_id_seq', 17);
select setval('type_id_seq', 10);
delete from medicament
where id = 19 ;

insert into avail_medicament values (200,null,null);


create or replace function  positive_price() returns trigger as $$
    begin
        if new.cost is null then
            raise exception 'cost cannot be null';
            end if;
        if new.cost<0 then
            raise exception 'cost must be positive';
            end if;
        return new;
    end;

$$ LANGUAGE plpgsql;

CREATE TRIGGER positive_price BEFORE INSERT OR UPDATE ON medicament
    FOR EACH ROW EXECUTE PROCEDURE positive_price();


insert into medicament ( name, cost, id_type, id_fabricator)
values ( 'Pioglitazone Hydrochloride', -591.74, 1, 1);


create or replace function is_type(varchar(50))
returns table (name_of_type varchar(50), name_of_med varchar(50),cost_of_med numeric,name_of_fabricator varchar(50)) as $$
    begin
        return query
        select t.name, m.name,m.cost, c.name
        from type t
        join medicament m on t.id = m.id_type
        join fabricator f on f.id = m.id_fabricator
        join country c on c.id = f.id_country
        where t.name=$1;
    end;
    $$
language plpgsql;

select is_type('SULFACETAMIDE SODIUM, SULFUR');
select is_type('CHLORCYCLIZINE HYDROCHLORIDE');

select * from  medicament;
select * from fabricator;
select * from type;
select * from country;