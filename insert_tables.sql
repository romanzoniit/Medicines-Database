insert into type (id, name) values (1, 'CHLORCYCLIZINE HYDROCHLORIDE');
insert into type (id, name) values (2, 'Metoclopramide Hydrochloride');
insert into type (id, name) values (3, 'Imipramine Hydrochloride');
insert into type (id, name) values (4, 'ACETAMINOPHEN, CHLORPHENIRAMINE MALEATE ');
insert into type (id, name) values (5, 'moxifloxacin hydrochloride');
insert into type (id, name) values (6, 'ALPROSTADIL');
insert into type (id, name) values (7, 'Ibuprofen, Pseudoephedrine Hydrochloride');
insert into type (id, name) values (8, 'SULFACETAMIDE SODIUM, SULFUR');
insert into type (id, name) values (9, 'ciprofloxacin hydrochloride');
insert into type (id, name) values (10, 'Sertraline Hydrochloride');

insert into drugstore (id, name, adress) values (1, 'ARMY AND AIR FORCE EXCHANGE SERVICE', '23458 Fordem Pass');
insert into drugstore (id, name, adress) values (2, 'Rite Aid Corporation', '54 Anderson Way');
insert into drugstore (id, name, adress) values (3, 'Nash-Finch Company', '50563 Sunnyside Junction');
insert into drugstore (id, name, adress) values (4, 'Carlsbad Technology, Inc.', '93 Paget Court');
insert into drugstore (id, name, adress) values (5, 'REMEDYREPACK INC.', '7155 Mesta Road');
insert into drugstore (id, name, adress) values (6, 'TIME CAP LABORATORIES, INC', '03576 Springview Place');
insert into drugstore (id, name, adress) values (7, 'Parfums Christian Dior', '38 1st Way');
insert into drugstore (id, name, adress) values (8, 'Daiichi Sankyo, Inc.', '651 Ludington Park');
insert into drugstore (id, name, adress) values (9, 'Select Brand Distributors', '2 Quincy Way');
insert into drugstore (id, name, adress) values (10, 'Apotex Corp.', '30781 Hansons Trail');




insert into country (id, name) values (1, 'Russia');
insert into country (id, name) values (2, 'Greece');
insert into country (id, name) values (3, 'Sweden');
insert into country (id, name) values (4, 'Sweden');
insert into country (id, name) values (5, 'Chile');
insert into country (id, name) values (6, 'China');
insert into country (id, name) values (7, 'Philippines');
insert into country (id, name) values (8, 'Ukraine');
insert into country (id, name) values (9, 'Indonesia');
insert into country (id, name) values (10, 'Luxembourg');

insert into fabricator (id, id_country, phone, adress) values (1, 1, '7224628868', '205 Pennsylvania Street');
insert into fabricator (id, id_country, phone, adress) values (2, 2, '5342279107', '31536 Kim Pass');
insert into fabricator (id, id_country, phone, adress) values (3, 3, '5043533997', '2 Del Mar Road');
insert into fabricator (id, id_country, phone, adress) values (4, 4, '6964461576', '39 Porter Trail');
insert into fabricator (id, id_country, phone, adress) values (5, 5, '4242247304', '691 Vidon Place');
insert into fabricator (id, id_country, phone, adress) values (6, 6, '8605578634', '7897 Magdeline Alley');
insert into fabricator (id, id_country, phone, adress) values (7, 7, '3008348017', '5719 Michigan Park');
insert into fabricator (id, id_country, phone, adress) values (8, 8, '8111324731', '05 Buhler Crossing');
insert into fabricator (id, id_country, phone, adress) values (9, 9, '5832964177', '51412 Larry Road');
insert into fabricator (id, id_country, phone, adress) values (10, 10, '9762968197', '98 Brentwood Point');

insert into medicament (id, name, cost, id_type, id_fabricator) values (1, 'Pioglitazone Hydrochloride', 591.74, 1, 1);
insert into medicament (id, name, cost, id_type, id_fabricator) values (2, 'Colgate', 250.59, 2, 2);
insert into medicament (id, name, cost, id_type, id_fabricator) values (3, 'Benztropine Mesylate', 286.05, 3, 3);
insert into medicament (id, name, cost, id_type, id_fabricator) values (4, 'SHAKING SMOOTHIE LEMON MASK', 728.25, 4, 4);
insert into medicament (id, name, cost, id_type, id_fabricator) values (5, 'Dr. Pearsalls 500 Calorie Diet', 714.62, 5, 5);
insert into medicament (id, name, cost, id_type, id_fabricator) values (6, 'GERI-TUSSIN EXPECTORANT', 345.35, 6, 6);
insert into medicament (id, name, cost, id_type, id_fabricator) values (7, 'SPA Mystique Skin Protection', 561.8, 7, 7);
insert into medicament (id, name, cost, id_type, id_fabricator) values (8, 'UV Capture Vita Sun Gel', 576.85, 8, 8);
insert into medicament (id, name, cost, id_type, id_fabricator) values (9, 'Ammonium Lactate', 643.09, 9, 9);
insert into medicament (id, name, cost, id_type, id_fabricator) values (10, 'Ibuprofen', 634.6, 10, 10);

insert into avail_medicament (id_med, id_drugstore, count) values (1, 1, 59);
insert into avail_medicament (id_med, id_drugstore, count) values (2, 2, 95);
insert into avail_medicament (id_med, id_drugstore, count) values (3, 3, 11);
insert into avail_medicament (id_med, id_drugstore, count) values (4, 4, 53);
insert into avail_medicament (id_med, id_drugstore, count) values (5, 5, 16);
insert into avail_medicament (id_med, id_drugstore, count) values (6, 6, 1);
insert into avail_medicament (id_med, id_drugstore, count) values (7, 7, 99);
insert into avail_medicament (id_med, id_drugstore, count) values (8, 8, 47);
insert into avail_medicament (id_med, id_drugstore, count) values (9, 9, 43);
insert into avail_medicament (id_med, id_drugstore, count) values (10, 10, 30);