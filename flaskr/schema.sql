
DROP TABLE IF EXISTS user_tab; 
DROP TABLE IF EXISTS post;

CREATE TABLE user_tab (
  id  INTEGER  PRIMARY KEY,  
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  name TEXT  NOT NULL,
  email TEXT UNIQUE NOT NULL,
  telephone_number TEXT UNIQUE NOT NULL ,
  birthday TEXT NOT NULL,
  prof_skills TEXT NOT NULL
);

CREATE TABLE post (
  id INTEGER  PRIMARY KEY ,
  author_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  FOREIGN KEY (author_id) REFERENCES user_tab (id)
);


CREATE TABLE course (
    author_id INTEGER NOT NULL,
    name TEXT NOT NULL,
    start_date DATE,
    descr TEXT NOT NULL,
    students_id TEXT ,
    FOREIGN KEY (author_id) REFERENCES user_tab (id),
    FOREIGN KEY (students_id) REFERENCES user_tab (id)
);

