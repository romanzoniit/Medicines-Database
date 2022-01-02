create table type(
   id serial not null,
   name varchar(50),
   primary key (id)
);
create table country (
    id serial not null,
    name varchar(50) not null,
    primary key (id)
);
create table drugstore(
    id serial not null,
    name varchar (50) not null,
    adress varchar(50) not null,
    primary key (id)
);
create table fabricator(
    id serial not null,
    id_country int not null,
    phone bigint not null,
    adress varchar(50),
    primary key (id),
    foreign key (id_country) references country (id)
);


create table if not exists medicament (
    id serial not null,
    name varchar (50) not null,
    cost numeric not null,
    id_type int not null,
    id_fabricator int not null,
    primary key (id),
    foreign key (id_type) references type (id),
    foreign key (id_fabricator) references fabricator (id)
);

create table avail_medicament (
    id_med int not null,
    id_drugstore int not null,
    count int not null,
    foreign key (id_med) references medicament(id),
    foreign key (id_drugstore) references drugstore(id)
);