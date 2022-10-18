#Створити табличку юзер(firstName, lastName, age, gender)
CREATE TABLE cursor_sql.user_test (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(256) NULL,
  last_name VARCHAR(256) NULL,
  age INT NULL,
  gender VARCHAR(6) NULL,
  PRIMARY KEY (id));
  
  #Додати 10 користувачів в таблицю

INSERT INTO `cursor_sql`.`user_test` (`first_name`, `last_name`, `age`, `gender`) 
VALUES ('Andrii', 'Tysiak', '21', 'MALE'),('Vuktoria', 'Yarema', '17', 'FEMALE'),
('Adriane', 'Both  ', '13', 'FEMALE'), ('Alen ', 'Kipr', '26', 'MALE'),
('Jonh', 'Diez', '45', 'MALE'),('Rondey', 'Clark', '20', 'FEMALE'),
('Rick', 'Morty', '65', 'MALE'),('Rosa', 'Hast', '11', 'FEMALE'),
('Robert', 'Both', '18', 'MALE'), ('Maks','Yomu','17','MALE');

#Написати запит який виведе всіх повнолітніх

SELECT * FROM cursor_sql.user_test WHERE age > 18;

#Написати запит який виведе всіх чоловіків між 18 і 60 років

SELECT * FROM cursor_sql.user_test WHERE gender = 'MALE' AND age BETWEEN 18 AND 60;

#Написати запит всіх жінок, ім'я яких містить літеру «а»

SELECT * FROM cursor_sql.user_test WHERE gender = 'FEMALE' AND first_name LIKE'%a%';
  
  
  