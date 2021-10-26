.headers on
.mode column
.mode line

PRAGMA foreign_keys = ON;
CREATE TABLE Restaurants (
  Restaurant_id INTEGER NOT NULL PRIMARY KEY,
  name TEXT,
  imageLink TEXT
);
  
 CREATE TABLE Menu (
  Menu_id INTEGER NOT NULL PRIMARY KEY,
  nameOfMenu TEXT,
  Restaurant_id INTEGER NOT NULL,  
  FOREIGN KEY(Restaurant_id) REFERENCES Restaurants(Restaurant_id)
 );
 
 CREATE TABLE MenuItems (
  menuItem_id INTEGER NOT NULL PRIMARY KEY,
  nameOfItem TEXT,
  price INTEGER,
  Menu_id INTEGER NOT NULL,
  FOREIGN KEY(Menu_id) REFERENCES Menu(Menu_id)
);


INSERT INTO Restaurants (name) VALUES
("The Great Cow"),
("Recline and Dine");





