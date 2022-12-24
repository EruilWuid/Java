create schema javabw;
use javabw;
CREATE TABLE t_user (
  	userId int primary key auto_increment,
  	name varchar(20),
	username varchar(20),
	password varchar(20),
	qq_number varchar(20),
	signature varchar(255),
	phone varchar(11),
    uimg varchar(255)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
