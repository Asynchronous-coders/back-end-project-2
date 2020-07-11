DROP DATABASE IF EXISTS corona_cocktaildb;

CREATE DATABASE corona_cocktailDB;
Use corona_cocktailDB;

create table Users
(
	id int auto_increment,
	first_name VARCHAR(30) null,
	last_name VARCHAR(30) null,
	password VARCHAR(50) null,
	constraint Users_pk
		primary key (id)
);


create table reviews
(
	id int auto_increment,
	rate_cocktail int null,
	review_cocktail VARCHAR(250) null,
	user_id int null,
	constraint reviews_pk
		primary key (id),
	constraint reviews_users_id_fk
		foreign key (user_id) references users (id)
			on update cascade on delete cascade
);
/*Sam 7/11/20 */
CREATE TABLE cocktails(
	id INT NOT NULL AUTO_INCREMENT,
	cocktail_name VARCHAR(100) NOT NULL,
	ingredients VARCHAR(500) NOT NULL,
	directions VARCHAR(500) NOT NULL,
	review_id INT NOT NULL,
	CONSTRAINT cocktails_pk
	PRIMARY KEY (id),
	CONSTRAINT review_id_fk
	FOREIGN KEY (review_id) REFERENCES reviews (id)
	ON UPDATE cascade ON DELETE cascade 
);

/* Juan 7/9/20 */
INSERT INTO corona_cocktaildb.users (first_name, last_name, password) VALUES ('Bill', 'Nye', 'scienceguy');
/* Logan 7/9/20 */
INSERT INTO corona_cocktaildb.users (first_name, last_name, password) VALUES ('Sam', 'Williams', 'soccerman');
/* Juan 7/11/20 */
alter table reviews
	add cocktail_id int null;
