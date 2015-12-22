DROP DATABASE IF EXISTS movies;

CREATE DATABASE IF NOT EXISTS movies;

USE movies;

CREATE TABLE movies (
  movie_id INT(11)
  NOT NULL AUTO_INCREMENT,
  PRIMARY KEY(movie_id),
  title VARCHAR(255),
  description VARCHAR(255)
 ) ENGINE=InnoDB
  COLLATE utf8_general_ci;  


INSERT INTO movies (movie_id, title, description) VALUES
  (NULL, "The Twilight Sage","A long, straggly tale about a man with a fake beard. Avoid."),
  (NULL, "77 Psychopaths","A struggling web designer inadvertently becomes entangled in the Gloucestershire underworld after his oddball friends kidnap a gangster's beloved cocker spaniel."),
  (NULL, "Silver Linings Playpen","A baby plays in its playpen. Frankly tedious if not your child."),
  (NULL, "Sightseers","A party of tourists see London from an open top bus."),
  (NULL, "Iron Man 4","A short film about a small child playing with an iron. It seems the health and safety types were not on the job."),
  (NULL, "End of the Match","A very short film indeed about the electricity supply in 1970s Britain."),
  (NULL, "Rise of the Guardians","When an evil pack of Dobermans and Rottweilers seek to take over the park, it's down to the Guardians to defend their patch."),
  (NULL, "Great Cheeses of our Time", "A study of some memorable cheeses."),
  (NULL, "Life of Pie","A silly pun."),
  (NULL, "La Miserable","A life during the Revolution."),
  (NULL, "Life of Brian","A biopic of Brian."),
  (NULL, "Danger in the Manger","Danger lurks in the most unexpected places."),
  (NULL, "The Dot Matrix","They just don't make 'em like that anymore."),
  (NULL, "13 Types of Cheese","Ten truly great cheeses. And three awful ones."),
  (NULL, "The Wrong Trousers","True story of an innocent man and his dog mistaken for criminals.")
;

CREATE TABLE movie_goers (
  user_id INT(11)
  NOT NULL AUTO_INCREMENT,
  PRIMARY KEY(user_id),
  firstname VARCHAR(40),
  lastname VARCHAR(40)
 ) ENGINE=InnoDB
  COLLATE utf8_general_ci;   
  
INSERT INTO movie_goers (user_id, firstname, lastname) VALUES
  (NULL, "Steven", "Seagul"),
  (NULL, "Bill", "Gaits"),
  (NULL, "Sweeney", "Toad"),
  (NULL, "Alfred", "the Awful"),
  (NULL, "The Queen", "of Sheba"),
  (NULL, "Michael", "Douglas"),
  (NULL, "James", "Olivier"),
  (NULL, "Mike", "Cheeseyman"),
  (NULL, "Mr", "Movieman"),
  (NULL, "King Beans", "II"),
  (NULL, "Albert", "Square"),
  (NULL, "Wallace", ""),
  (NULL, "Gromit", "")
;


CREATE TABLE favourites (
  user_id INT NOT NULL,
  movie_id INT NOT NULL
 ) ENGINE=InnoDB
 COLLATE utf8_general_ci;   

INSERT INTO favourites(movie_id, user_id) VALUES
  ("9", "3"),
  ("12", "5"),
  ("12", "6"),
  ("12", "7"),
  ("2", "3"),
  ("4", "1"),
  ("4", "11"),
  ("8", "12"),
  ("8", "13"),
  ("14", "12"),
  ("14", "13"),
  ("9", "12"),
  ("1", "9"),
  ("2", "9"),  
  ("3", "9"),  
  ("4", "9"),
  ("5", "9"),
  ("6", "9"),
  ("7", "9"),  
  ("8", "9"),
  ("9", "9"),
  ("10", "9"),
  ("11", "9"),
  ("12", "9"),
  ("13", "9"),
  ("14", "9"),
  ("15", "9"),
  ("8", "8"),
  ("14", "8"),
  ("15", "12"),
  ("15", "13")
;