/*
Шаблон скрипта после развертывания							
--------------------------------------------------------------------------------------
 В данном файле содержатся инструкции SQL, которые будут добавлены в скрипт построения.		
 Используйте синтаксис SQLCMD для включения файла в скрипт после развертывания.			
 Пример:      :r .\myfile.sql								
 Используйте синтаксис SQLCMD для создания ссылки на переменную в скрипте после развертывания.		
 Пример:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
insert into sectors (title) values
(N'Бухгалтерия'),
(N'Кадры'),
(N'Руководство'),
(N'Програмисты');

insert into Position(position) values
(N'Начальник'),
(N'Ведущий инженер'),
(N'Инженер 1 кат'),
(N'Инженер 2 кат'),
(N'секретарша'),
(N'директор'),
(N'родственник директора');


insert into persons(LastName,FirstName,MiddleName,TabNum,Phone,SectorID,Position)
values
(N'Деревянко',N'Петр',N'Иванович',101,N'097-355-33-55',
(select id from sectors where title = N'Руководство'),(select id from Position where position = N'директор')),
(N'Штангенциркуль',N'Лев',N'Соломонович',103,N'097-355-66-55',
(SELECT id FROM sectors WHERE title = N'Програмисты'),(SELECT id FROM Position WHERE position = N'начальник')),
(N'Ын',N'Ким',N'Брдыр',104,N'097-355-77-55',
(SELECT id FROM sectors WHERE title = N'Програмисты'),(SELECT id FROM Position WHERE position = N'ведущий инженер')),
(N'Дереванко',N'Николай',N'Петрович',105,N'097-355-77-77',
(SELECT id FROM sectors WHERE title = N'Програмисты'),(SELECT id FROM Position WHERE position = N'родственник директора')),
(N'Пушкин',N'Александр',N'Сергеевич',106,N'097-355-78-78',
(SELECT id FROM sectors WHERE title = N'Програмисты'),(SELECT id FROM Position WHERE position = N'Инженер 2 кат')),
(N'Андерсон',N'Памелла',N'-',107,N'097-355-69-69',
(SELECT id FROM sectors WHERE title = N'Руководство'),(SELECT id FROM Position WHERE position = N'секретарша')),

(N'Петров',N'Акакий',N'Арнольдович',102,N'098-111-44-55',
(select id from sectors where title = N'Бухгалтерия'),(select id from Position where position = N'начальник'));

INSERT INTO Zarplata(Lastname,Date,Summ,Position)
VALUES
((SELECT id FROM persons WHERE LastName=N'Деревянко'),'01.01.2019',500000),
((SELECT id FROM persons WHERE LastName=N'Деревянко'),'01.01.2019',600000),
((SELECT id FROM persons WHERE LastName=N'Деревянко'),'01.07.2019',600000),
((SELECT id FROM persons WHERE LastName=N'Деревянко'),'01.10.2019',600000),
((SELECT id FROM persons WHERE LastName=N'Штангенциркуль'),'01.01.2019',30000),
((SELECT id FROM persons WHERE LastName=N'Штангенциркуль'),'01.01.2019',40000),
((SELECT id FROM persons WHERE LastName=N'Штангенциркуль'),'01.07.2019',40000),
((SELECT id FROM persons WHERE LastName=N'Штангенциркуль'),'01.10.2019',35000),
((SELECT id FROM persons WHERE LastName=N'Ын'),'01.01.2019',15000),
((SELECT id FROM persons WHERE LastName=N'Ын'),'01.01.2019',20000),
((SELECT id FROM persons WHERE LastName=N'Ын'),'01.07.2019',200000),
((SELECT id FROM persons WHERE LastName=N'Ын'),'01.10.2019',19000),
((SELECT id FROM persons WHERE LastName=N'Дереванко'),'01.01.2019',140000),
((SELECT id FROM persons WHERE LastName=N'Дереванко'),'01.01.2019',150000),
((SELECT id FROM persons WHERE LastName=N'Дереванко'),'01.07.2019',130000),
((SELECT id FROM persons WHERE LastName=N'Дереванко'),'01.10.2019',180000),
((SELECT id FROM persons WHERE LastName=N'Пушкин'),'01.01.2019',8000),
((SELECT id FROM persons WHERE LastName=N'Пушкин'),'01.01.2019',7500),
((SELECT id FROM persons WHERE LastName=N'Пушкин'),'01.07.2019',8400),
((SELECT id FROM persons WHERE LastName=N'Пушкин'),'01.10.2019',8250),
((SELECT id FROM persons WHERE LastName=N'Андерсон'),'01.01.2019',120000),
((SELECT id FROM persons WHERE LastName=N'Андерсон'),'01.01.2019',130000),
((SELECT id FROM persons WHERE LastName=N'Андерсон'),'01.07.2019',150000),
((SELECT id FROM persons WHERE LastName=N'Андерсон'),'01.10.2019',120000),
((SELECT id FROM persons WHERE LastName=N'Петров'),'01.01.2019',38000),
((SELECT id FROM persons WHERE LastName=N'Петров'),'01.01.2019',40000),
((SELECT id FROM persons WHERE LastName=N'Петров'),'01.07.2019',51000),
((SELECT id FROM persons WHERE LastName=N'Петров'),'01.10.2019',43000);

INSERT INTO Operation(Date,Summ)
values
('01.01.2019',1000000),
('01.01.2019',2000000);

insert into Typevyplb(typevyplid)
values
(N'oklad'),
(N'prem');