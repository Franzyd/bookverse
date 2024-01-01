DROP
  TABLE IF EXISTS review;
DROP
  TABLE IF EXISTS users;

CREATE TABLE review (
  id integer not null,
  user_login varchar(255),
  book varchar(255),
  review varchar(10000),
  comments_amount integer,
  likes_amount integer,
  save_amount integer,
  date timestamp(6),
  primary key (id)
);

CREATE TABLE users (
  login varchar(255) not null,
  name varchar(255),
  last_name varchar(255),
  email varchar(255),
  password varchar(255),
  primary key (login)
);

INSERT INTO users (
  email, last_name, login, name, password
)
VALUES
  (
    'john.doe@example.com', 'Doe', 'john_doe',
    'John', 'securepassword1'
  ),
  (
    'jane.smith@example.com', 'Smith',
    'jane_smith', 'Jane', 'strongpassword2'
  ),
  (
    'bob.johnson@example.com', 'Johnson',
    'bob_johnson', 'Bob', 'myp@ssw0rd'
  );

INSERT INTO review (
  id, book, review, user_login, date,
  likes_amount, comments_amount, save_amount
)
VALUES
  (
    1222, 'The Art of Coding', 'I recently read "The Art of Coding," and I must say it is an incredibly insightful book that delves deep into the intricate world of programming. The author skillfully combines theoretical concepts with practical examples, making it an invaluable resource for both beginners and seasoned developers. The coding exercises are challenging yet rewarding, enhancing my problem-solving skills. Highly recommended for anyone passionate about mastering the art of coding.',
    'john_doe', CURRENT_TIMESTAMP, 0,
    0, 0
  ),
  (
    1223, 'Data Science Essentials',
    'As someone deeply immersed in the field of data science, I found "Data Science Essentials" to be a comprehensive guide that covers the fundamental principles and advanced techniques. The book offers clear explanations, accompanied by real-world examples and case studies. The authors approach makes complex topics accessible, making it suitable for both beginners and experienced data scientists. This book is a must-read for anyone looking to stay abreast of the rapidly evolving landscape of data science.',
    'john_doe', CURRENT_TIMESTAMP, 0,
    0, 0
  ),
  (
    1224, 'World History in Perspective',
    'Reading "World History in Perspective" was a captivating journey through the annals of time. The author skillfully weaves together historical events, providing a nuanced perspective on the interconnectedness of civilizations. The narrative is engaging, offering in-depth insights into the cultural, social, and political dynamics that shaped our world. This book is not merely a recounting of facts but a thought-provoking exploration that encourages readers to reflect on the lessons of history.',
    'john_doe', CURRENT_TIMESTAMP, 0,
    0, 0
  ),
  (
    1225, 'The Science of the Cosmos',
    'Delving into "The Science of the Cosmos" was like embarking on a cosmic odyssey. The author navigates the complexities of astrophysics with clarity and enthusiasm, making seemingly esoteric concepts accessible to readers of all backgrounds. From the origins of the universe to the mysteries of dark matter, this book provides a profound understanding of our place in the cosmos. Whether youre a science enthusiast or a casual reader, this book will leave you in awe of the wonders of the universe.',
    'jane_smith', CURRENT_TIMESTAMP,
    0, 0, 0
  ),
  (
    1226, 'Infinite Possibilities: Quantum Computing',
    'Quantum computing is a frontier that promises to revolutionize the world of computing, and "Infinite Possibilities" serves as an excellent guide to this fascinating realm. The book not only elucidates the principles of quantum mechanics but also explores the potential applications of quantum computing in various fields. The authors lucid explanations and engaging writing style make this complex subject accessible to readers with diverse levels of expertise. A must-read for anyone intrigued by the future of computing.',
    'jane_smith', CURRENT_TIMESTAMP,
    0, 0, 0
  ),
  (
    1227, 'The Art of Mindfulness', 'Mindfulness is a transformative practice that can bring about profound changes in our lives. "The Art of Mindfulness" offers a practical and insightful guide to incorporating mindfulness into daily routines. The author combines ancient wisdom with modern psychology, providing exercises and techniques that promote self-awareness and inner peace. Reading this book was not just an intellectual journey but a personal exploration of mindfulness that left a lasting impact on my well-being.',
    'jane_smith', CURRENT_TIMESTAMP,
    0, 0, 0
  ),
  (
    1228, 'Economics Unveiled', 'Navigating the intricate landscape of economics can be daunting, but "Economics Unveiled" simplifies the complexities, making it an accessible and engaging read. The author skillfully breaks down economic theories, illustrating their real-world implications. Whether youre a student of economics or a curious reader seeking to understand the forces that shape our economies, this book provides a comprehensive and enlightening overview.',
    'bob_johnson', CURRENT_TIMESTAMP,
    0, 0, 0
  ),
  (
    1229, 'Poetry of the Soul', 'Dive into the profound depths of the human experience with "Poetry of the Soul." The poet crafts verses that resonate with the myriad emotions that define our existence. Each poem is a lyrical journey through joy, sorrow, love, and introspection. The language is rich, evoking vivid imagery and eliciting a visceral response. This collection is a testament to the power of poetry to capture the essence of the soul and connect us to the shared tapestry of human emotions.',
    'bob_johnson', CURRENT_TIMESTAMP,
    0, 0, 0
  ),
  (
    1230, 'The Culinary Explorer', 'Embark on a culinary adventure with "The Culinary Explorer." This cookbook goes beyond traditional recipes, offering a gastronomic journey through diverse cuisines and flavors from around the world. The authors passion for food is evident in the carefully curated recipes that celebrate the art and joy of cooking. Whether youre a seasoned chef or a kitchen novice, this book inspires creativity and a love for the culinary arts.',
    'bob_johnson', CURRENT_TIMESTAMP,
    0, 0, 0
  ),
  (
    1231, 'Mysteries of the Ancient World',
    'Unravel the enigmas of bygone eras with "Mysteries of the Ancient World." The author takes readers on an archaeological expedition, exploring ancient civilizations and the mysteries that shroud their histories. From the construction of monumental structures to deciphering ancient scripts, this book invites readers to ponder the riddles left behind by our ancestors. An enthralling read for history enthusiasts and those intrigued by the secrets of antiquity.',
    'bob_johnson', CURRENT_TIMESTAMP,
    0, 0, 0
  );
