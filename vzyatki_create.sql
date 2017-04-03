create table categories(
	id int constraint pk_categories primary key,
	name varchar(50) not null unique
)

create table complaints(
	id int identity constraint pk_complaints primary key,
	category_id int constraint fk_compl_categ foreign key references categories(id),
	title varchar(100) not null,
	bridesize int not null,
	complaint_text varchar(2000) not null,
	dt datetime not null,
	checked bit default(0)
)