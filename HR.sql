create database HR;
use hr;

create table Employee(Employee_id integer auto_increment , First_Name varchar(30) not null,
 Last_name varchar(30) not null,Email text, Phone_Number Text, 
 Hire_date Date, Job_Id varchar(50), Salary decimal(10,2), Commision_PCT decimal(5,2), Manager_Id integer, 
 Department_Id integer, primary key(Employee_Id) );
 
 Desc employee;
 
 insert into employee(First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Id, Salary, Commision_PCT, Manager_Id,
 Department_Id) value
 ("Steven", "King", "SKING", "515.123.4567", "2003-03-17","AD_PRES", 24000.00, 0.00,0, 90),
 ("Nenna", "Kochhar", "NKOCHHAR", "515.123.4568", "2005-09-21","AD_VP", 17000.00, 0.00, 100, 90),
 ("Lex", "De Haan", "LDEHAAN", "515.123.4569", "2001-01-13", "AD_VP",17000.00, 0.00,100, 90),
 ("Alexander", "Hunold", "AHUNOLD", "490.423.4567", "2006-01-03", "IT_PROG", 9000.00, 0.00, 102, 60),
 ("Bruce" ,"Ernst", "BERNST", "590.423.4568", "2007-05-21", "IT_PROG", 6000.00, 0.00,103, 60), 
 ("David" , "Austin", "DAUSTIN" , "590.423.4569", "2005-06-25", "IT_PROG", 4800.00, 0.00, 103,60),
 ("Valli", "Pataballa", "VPATABAL", "590.423.4560","2006-02-05", "IT_PROG", 4800.00,0.00, 103, 60),
 ("Diana", "Lorentz", "DLORENTZ", "590.423.5567","2007-02-07", "IT_PROG", 4200.00,0.00,103,60),
 ("Nancy", "GreenBerg","NGREENBE", "515.124.4569","2002-08-17", "FI_MGR", 12008.00, 0.00,101, 100),
 ("Daniel","Faviet","DFAVIET", "515.124.4169", "2002-08-16", "FI_ACCOUNT", 9000.00, 0.00,108,100),
 ("John", "Chen", "JCHEN", "515.124.4269", "2005-09-28", "FI_ACCOUNT", 8200.00, 0.00,108,100),
 ("Ismeal", "Sciarra", "ISCIARRA", "515.124.4369", "2005-09-30","FI_ACCOUNT", 7700.00,0.00,108,100),
 ("Jose Manuel", "Urman","JMRUMAN", "515.124.4469", "2006-03-07", "FI_ACCOUNT", 7800.00,0.00,108,100),
 ("Luis", "Popp", "LPOPP", "515.124.4567","2007-12-07", "FI_ACCOUNT", 6900.00,0.00,108, 100),
 ("Den", "Raphaely", "DRAPHEAL", "515.127.4561","2002-12-07", "PU_MAN",11000.00, 0.00, 100, 30),
 ("Alexander", "Khoo", "AKHOO", "515.127.4562","2003-05-18", "PU_CLERK", 3100.00,0.00,114,30),
 ("Shelli", "Baida", "SBAIDA", "515.127.4563","2005-12-24", "PU_CLERK",2900.00,0.00,114,30),
 ("Signal","Tobias", "STOBIAS", "515.127.4564",  "2005-07-24","PU_CLERK", 2800.00,0.00,114,30),
 ("Guy", "Himuro","GHIMURO", "515.127.4565","2006-11-15", "PU_CLERK", 2600.00,0.00,114, 30),
 ("Karen", "Colmenares", "KCOLMENA", "515.127.4566","2007-08-10", "PU_CLERK", 2500.00, 0.00, 114,30),
 ("Matthew", "Weiss", "MWEISS", "650.123.1234","2004-07-18","ST_MAN",8000.00,0.00, 100,50),
 ("Adam", "Fripp","AFRIPP", "650.123.2234", "2005-04-10","ST_MAN", 8200.00, 0.00,100, 50),
 ("Payam", "Kaufling", "PKAUFLIN", "650.123.3234", "2003-05-01","ST_MAN", 7900.00,0.00,100,50),
 ("Shanta", "Vollman", "SVOLLMAN", "650.123.4234", "2005-10-10", "ST_MAN", 6500.00, 0.00,100,50),
 ("Kevin", "Mourgos", "KMOURGOS", "650.23.5234","2007-11-16", "ST_MAN", 5800.00,0.00,100,50), 
 ("JUlia", "Naver", "JNAYER", "650.124.1214","2005-07-16", "ST_CLERK",3200.00,0.00,120,50),
 ("Irena", "Mikkilineni", "IMIKKILI", "650.124.1224", "2006-09-28", "ST_CLERK", 2700.00, 0.00, 120,50),
 ("James", "Landry", "JLANDRY", "650.124.1334", "2007-01-14", "ST_CLERK", 2400.00,0.00,120,50),
 ("Steven", "Markle", "SMARKLE", "650.124.1434", "2008-03-08", "ST_CLERK", 2200.00,0.00,120,50),
 ("Laura", "Bissot", "LBISSOT", "650.124.5234", "2005-08-20", "ST_CLERK", 3300, 0.00, 121,50),
 ("Mozhe", "Atkinson","MATKINSO", "650.124.6234","2005-10-30", "ST_CLERK", 2800.00,0.00,121,50),
 ("Jamesh", "Marlow", "JAMRLOW", "650.124.7234", "2005-02-16", "ST_CLERK",2500.00, 0.00,121,50),
 ("TJ", "Olson","TJOLSON", "650.124.8234", "2007-04-10", "ST_CLERK", 2100.00,0.00, 121,50),
 ("Jason", "Mallin", "JMALLIN", "650.127.1934", "2004-06-14","ST_CLERK", 3300.00,0.00,122,50),
 ("Micheal", "Rogers", "MROGGERS", "650.127.1834", "2006-08-26", "ST_CLERK", 2900.00, 0.00,122,50), 
 ("Ki", "Gee", "KGEE", "650.127.1734","2007-12-12", "ST_CLERK", 2400.00, 0.00,122,50),
 ("Hazel", "Philtanker","HPHILTAN", "650.127.1632", "2008-02-06", "ST_CLERK", 2200.00,0.00,122,50),
 ("Renske", "Ladwig", "RLADWIG", "650.121.1234", "2003-07-14", "ST_CLERK", 3600.00,0.00, 123,50),
 ("Stephen", "Stiles", "SSTILES", "650.121.2034","2005-10-26", "ST_CLERK", 3200.00,0.00,123,50),
 ("John", "Seo", "JSEO", "650.121.2019", "2006-02-12", "ST_CLERK", 2700.00,0.00, 123, 50),
 ("Joshua", "Patel","JPATEL","650.121.1834","2006-04-06", "ST_CLERK",2500.00,0.00,123,50),
 ("Trenna", "Rajs", "TRAJS", "650.121.8009", "2003-10-17", "ST_CLERK", 3500.00,0.00,124,50),
 ("Curtis", "Davies", "CDAVIES", "650.121.2994","2005-01-29", "ST_CLERK", 3100.00, 0.00, 124,50),
 ("Randall", "Matos", "RMATOS", "650.121.2874","2006-03-15", "ST_CLERRK",2600.00,0.00,124,50),
 ("Peter", "Vargas", "PVARGAS", "650.121.2004","2006-07-09","ST_CLERK", 2500.00,0.00,124,50),
 ("John","Russell", "JRUSSEL", "011.44.1344.429268", "2004-10-01", "SA_MAN", 14000.00,0.40, 100,80),
 ("Karen","Partners", "KPARTNER", "011.44.1344.467268", "2005-01-05","SA_MAN", 13500.00, 0.30,100,80),
 ("Alberto", "Erraruriz", "AERRAZUR", "011.44.1344.429278","2007-10-15", "SA_MAN", 12000.00,0.30,100,80),
 ("Gerald", "cambrault", "GCAMBRAU", "011.44.1344.619268", "2007-10-15", "SA_MAN", 11000.00, 0.30,100,80),
 ("Eleni", "Zlotkey", "EZLOTKEY", "011.44.1344.429018", "2008-01-29", "SA_MAN", 10500, 0.20,100, 80),
 ("Peter", "Tucker", "PTUCKER", "011.44.1344,129268", "2005-01-30", "SA_REP", 10000, 0.30,145, 80),
 ("David", "Bernstien","DBERNSTE", "011.44.1344.345268", "2005-03-24", "SA_REP", 9500.00,0.25,145, 80),
 ("Peter", "Hall", "PHALL", "011.44.1344.478968","2005-08-20","SA_REP", 9000.00,0.25,145,80),
 ("Christopher", "Olsen", "COLSEN", "011.44.1344.498718", "2006-03-30","SA_REP",8000.00,0.20,145,80),
 ("Nanentte", "Cambrault","NCAMBRAU","011.44.1344.987668","2006-12-09","SA_REP", 7500.00,0.20,145,80),
 ("Oliver", "Tuvault", "OTUVAULT", "011.44.1344.486508","2007-11-23", "SA_REP",7000.00,0.15,145,80),
 ("Janette", "King", "JKING", "011.44.1345.429268", "2004-01-30", "SA_REP",10000.00,0.35,146,80),
 ("Patrick", "Sully", "PSULLY", "011.44.1345.929268", "2004-03-04","SA_REP", 9500.00,0.35,146,80),
 ("Allan", "McEwen", "AMCEWEN", "011.44.1345.829268","2004-08-01", "SA_REP",9000.00,0.35,146,80),
 ("Lindsey", "Smith", "LSMITH", "011.44.1345.729268","2005-03-10","SA_REP", 8000.00,0.30,146,80),
 ("Louise", "Doran","LDORAN", "011.44.1345.629268","2005-12-15", "SA_REP", 7500.00,0.30, 146,80),
 ("Sarath", "Sewall", "SSEWAL", "011.44.1345.529268","2006-11-03", "SA_REP",7000.00,0.25,146, 80),
 ("Clara", "Vishney", "CVISHNEY", "011.44.1346.129268", "2005-11-11","SA_REP",10500.00,0.25,147,80), 
 ("Danielle", "Greene", "DGREENE", "011.44.1346.229268","2007-03-19", "SA_REP", 9500.00,0.15,147,80),
 ("Mattea", "Marvins", "MMARVINS", "011.44.1346.329268","2008-01-24","SA_REP", 7200.00,0.10,147,80),
 ("David", "Lee", "DLEE", "011.44.1346.529268","2008-02-23", "SA_REP", 6800.00,0.10,147,80),
 ("Sundar", "ANDE","SANDE", "011.44.1346,629268", "2008-03-24", "SA_REP", 6400.00,0.10,147,80),
 ("Amit", "Banda", "ABANDA", "011.44.1346.729268", "2008-04-21","SA_REP",6200.00, 0.10,147,80),
 ("Lisa", "Ozer", "LOZER", "011.44.1343.929268","2005-03-11", "SA_REP", 11500.00,0.25,148,80),
 ("Harrison", "Bloom","HBLOOM", "011.44.1343.829268", "2006-03-23","SA_REP", 10000.00, 0.20, 148, 80),
 ("Taylor", "Fox", "TFOX","011.44.1343.729268","2006-01-24","SA_REP", 9600.00,0.20,148,80), 
 ("William", "Smith", "WSMITH", "011.44.1343.629268","2007-02-23", "SA_REP", 7400.00,0.15,148,80),
 ("Elizabeth", "Bates","EBATES","011.44.1343.529268","2007-03-24", "SA_REP", 7300.00,0.15,148,80),
 ("Sundita", "Kumar", "SKUMAR", "011.44.1343.329268","2008-04-21","SA_REP", 6100.00,0.10,148,80),
 ("Ellen", "Abel","EABEL","011.44.1644.429267","2005-05-11","SA_REP", 11000.00,0.30,149,80),
 ("Alyssa","Hutton", "AHUTTON","011.44.1644.429266","2005-03-19","SA_REP", 8800.00,0.25,149,80),
 ("Jonathon","Taylor", "JTAYLOR", "011.44.1644.429265","2006-03-24","SA_REP",8600.00,0.20,149,80),
 ("Jack","Livingston","JLIVINGS","011.44.1644.429264","2006-04-23","SA_REP", 8400.00,0.20,149,80),
 ("Kimberely", "Grant", "KGRANT","011.44.1644.429264","2007-05-24", "SA_REP", 7000.00,0.15,149,0),
 ("Charles", "Johnson", "CJOHNSON","011.44.1644.429262","2008-01-04","SA_REP",6200.00,0.10,149,80),
 ("Winston","Taylor","WATYLOR", "650.507.9876","2006-01-24", "SH_CLERK",3200.00, 0, 120, 50),
 ("Jean", "Fleaur", "JFLEUAR", "650.507.9877", "2006-02-03", "SH_CLERK", 31000.00, 0.00, 120,50),
 ("Martha", "Sullivan", "MSULLIVA", "650.507.9878", "2007-06-21", "SH_CLERK",2500.00, 0.00,120,50),
 ("Girard","Geoni","GGEONI","650.507.9879", "2008-02-03","SH_CLERK", 2800.00, 0.00, 120,50),
 ("Nandita", "Sarchand","NSARCHAN","650.509.1876", "2004-01-27", "SH_CLERK", 4200.00, 0.00, 121,50),
 ("Alexis", "Bull","ABULL", "650.509.2876","2005-02-20","SH_CLERK", 41000.00, 0.00,121,50),
 ("Julia", "Dellinger", "JDELLING", "650.509.3876","2006-06-24", "SH_CLERK",34000.00, 0.00, 121,50),
 ("Anthony", "Cabrio","ACABRIO", "650.509.4876", "2007-02-07", "SH_CLERK", 3000.00, 0.00,121,50),
 ("Kelly", "Chunng", "KCHUNG", "650.505.1876","2005-06-14", "SH_CLERK", 3800.00, 0.00,122,50),
 ("Jennifer", "Dilly", "JDILLY", "650.505.2876","2005-08-13","SH_CLERK", 3600.00,0.0,122,50),
 ("Timothy", "Gates", "TGATES", "650.505.3876", "2006-07-11","SH_CLERK", 2900.00, 0.00, 122, 50),
 ("Randall", "Perkins","RPERKINS","650.505.4876", "2007-12-19", "SH_CLERK", 2500.00,0.00,122,50),
 ("Sarah", "Bell","SBELL", "650.501.1876", "2004-02-04", "SH_CLERK", 4000.00,0.00, 123,50),
 ("Britney", "Everett", "BEVERETT","650.501.2876","2005-03-03","SH_CLERK", 3900.00,0.00,123,50),
 ("Samuel", "McCain", "SMCCAIN", "650.501.3876", "2006-07-01", "SH_CLERK", 3200.00, 0.00,123,50),
 ("Vance", "Jones", "VJONES", "650.501.4876", "2007-03-17", "SH_CLERK",2800.00, 0.00,  123, 50),
 ("Alana", "Walsh" , "AWALSH", "650.507.9811","2006-04-24", "SH_CLERK",3100.00,0.00, 124, 50),
 ("Kevin" ,"Feeney", "KFEENEY","650.507.9822", "2006-05-23", "SH_CLERK", 3000.00,0.00,124,50),
 ("Donald", "OConnell", "DOCONNEL", "650.507.9833", "2007-06-21", "SH_CLERK", 2600.00, 0.00,124,50),
 ("Douglas", "Grant", "DGRANT", "650.507.9844","2008-01-13", "SH_CLERK", 2600.00, 0.00, 124,50),
 ("Jennifer", "Whalen","JWHALEN", "515.123.4444","2003-09-17","AD_ASST", 4400.00, 0.00,101,10),
 ("Micheal", "Hartstein","MHARTSTE", "515.123.5555","2004-02-17","MK_MAN", 13000.00, 0.00, 100,20),
 ("Pat", "Fay", "PFAY","603.123.6666","2005-08-17","MK_REP",6000.00, 0.00, 201,20),
 ("Susan", "Mavris", "SMAVRIS", "515.123.7777","2002-06-07","HR_REP", 6500.00,0.00, 101,40),
 ("Herman","Baer", "HBAER", "515.123.8888","2002-06-07", "PR_REP",10000.00, 0.00, 101, 70),
 ("Shelley", "Higgins", "SHIGGINS", "515.123.8080", "2002-06-07", "AC_MGR", 12008.00, 0.00, 101,110),
 ("William","Geitz", "WGIETS", "515.123.8181", "2002-06-07", "AC_ACCOUNT", 8300.00, 0.00, 205,110);
 
Select*from Employee;
















