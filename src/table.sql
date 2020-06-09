create table user(

	id varchar(50) not null primary key,
    pw varchar(50) not null,
    nick varchar(50) not null,
	email varchar(50),
    address varchar(200),
    regdate datetime default current_timestamp
);
create table board (
	num int(4) auto_increment primary key,
    category varchar(50),
    writer varchar(50),
    title varchar(100),
    content varchar(2000),
    regdate datetime default current_timestamp,
    hit int(4) default 0
);