CREATE DATABASE app_database;

-- user Table DROP if already exists (optional)
DROP TABLE IF EXISTS users;

-- Create users table
CREATE TABLE users (
    email VARCHAR(100) PRIMARY KEY, 
    name VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL,
    enabled BOOLEAN DEFAULT true -- Optional if you want to disable accounts
);

-- Insert ADMIN user
INSERT INTO users (email, name, password, role, enabled) 
VALUES (
    'admin@gmail.com', 
    'Admin User', 
    '$2a$10$fF95W8rkGeyE3eZKoI.UVuPbTzR7F2WxTxTZY4sS6tD8RxzDgob2i', -- bcrypt encoded 'admin123'
    'ADMIN',
    true
);

-- Insert normal USER
INSERT INTO users (email, name, password, role, enabled) 
VALUES (
    'user@gmail.com', 
    'Normal User', 
    '$2a$10$vhgVld2Cftw2T0vUmgvQnu38BpJYlE8NBjggvbp5cn.XMIx3AWmpC', -- bcrypt encoded 'user123'
    'USER',
    true
);

-- book Table DROP if already exists (optional)
DROP TABLE IF EXISTS book;

-- Create book table
CREATE TABLE book (
  id int NOT NULL AUTO_INCREMENT,
  author varchar(255) DEFAULT NULL,
  available bit(1) NOT NULL,
  description varchar(1000) DEFAULT NULL,
  genre varchar(255) DEFAULT NULL,
  image_url varchar(255) DEFAULT NULL,
  price double NOT NULL,
  stock int NOT NULL,
  title varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


 -- insert book sample data
INSERT INTO book (id, author, available, description, genre, image_url, price, stock, title) VALUES
(1, 'J.K. Rowling', TRUE, 'Fantasy novel about a young wizard.', 'Fantasy', 'https://upload.wikimedia.org/wikipedia/en/thumb/7/7a/Harry_Potter_and_the_Philosopher%27s_Stone_banner.jpg/250px-Harry_Potter_and_the_Philosopher%27s_Stone_banner.jpg', 19.99, 10, 'Harry Potter and the Sorcerer''s Stone'),
(2, 'J.R.R. Tolkien', TRUE, 'Epic fantasy adventure.', 'Fantasy', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/First_Single_Volume_Edition_of_The_Lord_of_the_Rings.gif/250px-First_Single_Volume_Edition_of_The_Lord_of_the_Rings.gif', 25.50, 5, 'The Lord of the Rings'),
(3, 'George Orwell', TRUE, 'Dystopian social science fiction novel.', 'Dystopian', 'amazon.com/images/S/compressed.photo.goodreads.com/books/1657781256i/61439040.jpg', 14.99, 8, '1984'),
(4, 'F. Scott Fitzgerald', TRUE, 'A novel set in the Jazz Age.', 'Classic', 'https://upload.wikimedia.org/wikipedia/commons/7/7a/The_Great_Gatsby_Cover_1925_Retouched.jpg', 10.99, 12, 'The Great Gatsby'),
(5, 'Harper Lee', TRUE, 'Story of racial injustice.', 'Classic', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg/250px-To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg', 12.99, 7, 'To Kill a Mockingbird'),
(6, 'Jane Austen', TRUE, 'Romantic novel of manners.', 'Classic', 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Pickering_-_Greatbatch_-_Jane_Austen_-_Pride_and_Prejudice_-_She_then_told_him_what_Mr._Darcy_had_voluntarily_done_for_Lydia.jpg', 11.99, 9, 'Pride and Prejudice'),
(7, 'Charles Dickens', TRUE, 'Story of an orphan boy navigating life in London.', 'Classic', 'https://upload.wikimedia.org/wikipedia/commons/6/6e/Twist_serialcover.jpg', 13.49, 6, 'Oliver Twist'),
(8, 'Herman Melville', TRUE, 'Epic tale of a sea captain''s obsession.', 'Classic', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Moby-Dick_FE_title_page.jpg/800px-Moby-Dick_FE_title_page.jpg', 15.75, 5, 'Moby Dick'),
(9, 'J.R.R. Tolkien', TRUE, 'A hobbit''s quest to destroy a powerful ring.', 'Fantasy', 'https://upload.wikimedia.org/wikipedia/en/8/8e/The_Fellowship_of_the_Ring_cover.gif', 25.50, 7, 'The Fellowship of the Ring'),
(10, 'C.S. Lewis', TRUE, 'Four children enter a magical world through a wardrobe.', 'Fantasy', 'https://upload.wikimedia.org/wikipedia/en/8/86/TheLionWitchWardrobe%281stEd%29.jpg', 14.99, 8, 'The Lion, the Witch and the Wardrobe'),
(11, 'Ursula K. Le Guin', TRUE, 'A wizard''s education and adventures.', 'Fantasy', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1353424536i/13642.jpg', 13.99, 6, 'A Wizard of Earthsea'),
(12, 'Terry Pratchett', TRUE, 'A humorous fantasy on a disc-shaped world.', 'Fantasy', 'https://upload.wikimedia.org/wikipedia/en/thumb/4/4d/The_Colour_of_Magic_%28cover_art%29.jpg/250px-The_Colour_of_Magic_%28cover_art%29.jpg', 12.49, 5, 'The Colour of Magic'),
(13, 'Patrick Rothfuss', TRUE, 'A gifted young man becomes the most notorious wizard his world has ever seen.', 'Fantasy', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1704917687i/186074.jpg', 16.99, 4, 'The Name of the Wind'),
(14, 'Agatha Christie', TRUE, 'Detective Hercule Poirot solves a murder on a train.', 'Mystery', 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c0/Murder_on_the_Orient_Express_First_Edition_Cover_1934.jpg/250px-Murder_on_the_Orient_Express_First_Edition_Cover_1934.jpg', 10.99, 6, 'Murder on the Orient Express'),
(15, 'Isaac Asimov', TRUE, 'A collection of robot-themed short stories.', 'Science Fiction', 'https://upload.wikimedia.org/wikipedia/en/thumb/d/d5/I_robot.jpg/250px-I_robot.jpg', 13.49, 5, 'I, Robot'),
(16, 'Nicholas Sparks', TRUE, 'A heartfelt love story spanning decades.', 'Romance', 'https://upload.wikimedia.org/wikipedia/en/thumb/d/d9/The_Notebook_Cover.jpg/250px-The_Notebook_Cover.jpg', 11.99, 7, 'The Notebook'),
(17, 'Stephen King', TRUE, 'A haunted hotel drives a man to madness.', 'Horror', 'https://upload.wikimedia.org/wikipedia/commons/0/09/The_Shining_%281977%29_front_cover%2C_first_edition.jpg', 14.75, 4, 'The Shining'),
(18, 'Michelle Obama', TRUE, 'The memoir of the former First Lady of the United States.', 'Biography', 'https://upload.wikimedia.org/wikipedia/en/thumb/0/09/Becoming_%28Michelle_Obama_book%29.jpg/250px-Becoming_%28Michelle_Obama_book%29.jpg', 17.99, 10, 'Becoming'),
(19, 'Lois Lowry', TRUE, 'A boy discovers the dark secrets behind his seemingly perfect society.', 'Dystopian', 'https://upload.wikimedia.org/wikipedia/en/7/7b/The_Giver_first_edition_1993.jpg', 10.99, 5, 'The Giver'),
(20, 'Aldous Huxley', TRUE, 'A futuristic society obsessed with conformity and pleasure.', 'Dystopian', 'https://upload.wikimedia.org/wikipedia/en/thumb/6/62/BraveNewWorld_FirstEdition.jpg/250px-BraveNewWorld_FirstEdition.jpg', 13.49, 6, 'Brave New World'),
(21, 'Ray Bradbury', TRUE, 'A future where books are outlawed and burned.', 'Dystopian', 'https://upload.wikimedia.org/wikipedia/en/thumb/d/db/Fahrenheit_451_1st_ed_cover.jpg/250px-Fahrenheit_451_1st_ed_cover.jpg', 12.99, 7, 'Fahrenheit 451'),
(22, 'Suzanne Collins', TRUE, 'Teenagers fight for survival in a dystopian society.', 'Dystopian', 'https://upload.wikimedia.org/wikipedia/en/thumb/3/39/The_Hunger_Games_cover.jpg/250px-The_Hunger_Games_cover.jpg', 11.99, 9, 'The Hunger Games');