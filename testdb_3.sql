CREATE TYPE gender AS ENUM ('Male', 'Female', 'Other');

CREATE TABLE inform (
  mssv INTEGER PRIMARY KEY,
  name VARCHAR(100),
  gender gender,
  specialize TEXT,
  graduation_year INTEGER,
  github VARCHAR(100),
  facebook VARCHAR(100),
  email VARCHAR(100)
);

CREATE TABLE achievement (
  mssv INTEGER PRIMARY KEY REFERENCES inform(mssv),
  cpa DECIMAL,
  programming_lang TEXT,
  language_cert TEXT,
  project TEXT,
  internship_experience TEXT
);

CREATE TABLE company (
  company_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  industry VARCHAR(100),
  location VARCHAR(100),
  website VARCHAR(100),
  contact_email VARCHAR(100),
  description TEXT
);

CREATE TABLE position (
  position_id SERIAL PRIMARY KEY,
  company_id INTEGER REFERENCES company(company_id),
  title VARCHAR(100),
  description TEXT,
  is_internship BOOLEAN
);

CREATE TABLE application (
  application_id SERIAL PRIMARY KEY,
  student_id INTEGER REFERENCES inform(mssv),
  position_id INTEGER REFERENCES position(position_id),
  application_date DATE
);




-- Chèn dữ liệu vào bảng inform
INSERT INTO inform (mssv, name, gender, specialize, graduation_year, github, facebook, email)
VALUES
  (20180001, 'John Doe', 'Male', 'Computer Science', 2022, 'github.com/johndoe', 'facebook.com/johndoe', 'johndoe@example.com'),
  (20180002, 'Emma Johnson', 'Female', 'Business Administration', 2023, 'github.com/emmajohnson', 'facebook.com/emmajohnson', 'emmajohnson@example.com'),
  (20180003, 'Michael Brown', 'Male', 'Electrical Engineering', 2022, 'github.com/michaelbrown', 'facebook.com/michaelbrown', 'michaelbrown@example.com'),
  (20190001, 'Sophia Wilson', 'Female', 'Chemical Engineering', 2022, 'github.com/sophiawilson', 'facebook.com/sophiawilson', 'sophiawilson@example.com'),
  (20190002, 'Daniel Martinez', 'Male', 'Environmental Engineering', 2023, 'github.com/danielmartinez', 'facebook.com/danielmartinez', 'danielmartinez@example.com'),
  (20220001, 'Olivia Anderson', 'Male', 'Mechanical Engineering', 2025, 'github.com/oliviaanderson', 'facebook.com/oliviaanderson', 'oliviaanderson@example.com'),
  (20220002, 'Ava Thompson', 'Female', 'Business Administration', 2025, 'github.com/avathompson', 'facebook.com/avathompson', 'avathompson@example.com'),
  (20230001, 'James Lee', 'Male', 'Electronics Engineering', 2027, 'github.com/jameslee', 'facebook.com/jameslee', 'jameslee@example.com'),
  (20230002, 'Sophie Clark', 'Female', 'Environmental Engineering', 2027, 'github.com/sophieclark', 'facebook.com/sophieclark', 'sophieclark@example.com'),
  (20230003, 'Matthew Wright', 'Male', 'Civil Engineering', 2026, 'github.com/matthewwright', 'facebook.com/matthewwright', 'matthewwright@example.com'),
  (20220004, 'Isabella Turner', 'Female', 'Economics', 2026, 'github.com/isabellaturner', 'facebook.com/isabellaturner', 'isabellaturner@example.com'),
  (20230005, 'Andrew Phillips', 'Male', 'Computer Science', 2027, 'github.com/andrewphillips', 'facebook.com/andrewphillips', 'andrewphillips@example.com'),
  (20230006, 'Emily Rodriguez', 'Female', 'Business Administration', 2027, 'github.com/emilyrodriguez', 'facebook.com/emilyrodriguez', 'emilyrodriguez@example.com'),
  (20210007, 'William Scott', 'Male', 'Electronics Engineering', 2026, 'github.com/williamscott', 'facebook.com/williamscott', 'williamscott@example.com'),
  (20220008, 'Grace Lewis', 'Female', 'Environmental Engineering', 2026, 'github.com/gracelewis', 'facebook.com/gracelewis', 'gracelewis@example.com'),
  (20230009, 'Victoria Turner', 'Female', 'Computer Science', 2027, 'github.com/victoriaturner', 'facebook.com/victoriaturner', 'victoriaturner@example.com'),
  (20230010, 'David Johnson', 'Male', 'Electronics Engineering', 2026, 'github.com/davidjohnson', 'facebook.com/davidjohnson', 'davidjohnson@example.com'),
  (20200011, 'Sophia White', 'Female', 'Environmental Engineering', 2024, 'github.com/sophiawhite', 'facebook.com/sophiawhite', 'sophiawhite@example.com'),
  (20200002, 'John Doe', 'Male', 'Business Administration', 2024, 'github.com/johndoe2', 'facebook.com/johndoe2', 'johndoe2@example.com');


INSERT INTO achievement (mssv, cpa, programming_lang, language_cert, project, internship_experience)
VALUES
(20180001, 3.5, 'Java', 'TOEFL', 'Aurora Rising', 'XYZ Company'),
(20180002, 3.2, 'Python', 'IELTS', 'Stellar Fusion', 'ABC Corporation'),
(20180003, 3.8, 'C++', 'TOEIC', 'Moonlight Serenade', 'DEF Inc.'),
(20190001, 3.6, 'Java', 'TOEFL', 'Galaxy Quest', 'GHI Corporation'),
(20190002, 3.9, 'Python', 'IELTS', 'Infinite Horizons', 'JKL Company'),
(20220001, 3.7, 'C++', 'TOEIC', 'Quantum Nexus', 'MNO Corporation'),
(20220002, 3.4, 'Java', 'TOEFL', 'Solaris Odyssey', 'PQR Inc.'),
(20230001, 3.1, 'Python', 'IELTS', 'Nebula Chronicles', 'STU Corporation'),
(20230002, 3.9, 'C++', 'TOEIC', 'Celestial Symphony', 'VWX Company'),
(20230003, 3.8, 'Java', 'TOEFL', 'Project Epsilon', 'YZA Corporation'),
(20220004, 3.2, 'Python', 'IELTS', 'Genesis Frontier', 'BCD Inc.'),
(20230005, 3.6, 'C++', 'TOEIC', 'Lunar Mirage', 'EFG Corporation'),
(20230006, 3.7, 'Java', 'TOEFL', 'Astral Enigma', 'HIJ Company'),
(20210007, 3.5, 'Python', 'IELTS', 'Nova Vanguard', 'KLM Corporation'),
(20220008, 3.9, 'C++', 'TOEIC', 'Orions Legacy', 'PQR Inc.'),
(20230009, 3.6, 'Java', 'TOEFL', 'Comet Catalyst', 'STU Corporation'),
(20230010, 3.4, 'Python', 'IELTS', 'Solstice Nexus', 'VWX Company'),
(20200011, 3.8, 'C++', 'TOEIC', 'Cosmic Dreamers', 'YZA Corporation'),
(20200002, 3.2, 'Java', 'TOEFL', 'Stardust Symphony', 'BCD Inc.');
