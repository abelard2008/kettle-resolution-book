use sakila_dwh;
create table lkp_codes (    
	    id int primary key,    
	    ref_code varchar(1),    
	    ref_name varchar(10),    
	    src_system varchar(10),    
	    src_code varchar(10)    
)  engine=myisam;    
    
insert into lkp_codes values(1,'M','Male','Sales','1');    
insert into lkp_codes values(2,'F','Female','Sales','2');    
insert into lkp_codes values(3,'M','Male','Web','male');    
insert into lkp_codes values(4,'F','Female','Web','female');    
insert into lkp_codes values(5,'M','Male','CRM','F');    
insert into lkp_codes values(6,'F','Female','CRM','M');    
insert into lkp_codes values(7,'U','Unknown','CRM','C'); 
