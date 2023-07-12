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
  (20180001, 'John Smith', 'Male', 'Khoa Học Máy Tính', 2022, 'nguyenvana', 'nguyenvana', 'nguyenvana@example.com'),
  (20180002, 'Emma Johnson', 'Female', 'Quản trị Kinh doanh', 2023, 'tranthib', 'tranthib', 'tranthib@example.com'),
  (20180003, 'Michael Brown', 'Male', 'Kỹ thuật Điện', 2022, 'phamvanc', 'phamvanc', 'phamvanc@example.com'),
  (20190001, 'Sophia Wilson', 'Female', 'Kỹ thuật Hóa học', 2022, 'nguyenthid', 'nguyenthid', 'nguyenthid@example.com'),
  (20190002, 'Daniel Martinez', 'Male', 'Kỹ thuật Môi trường', 2023, 'tranvane', 'tranvane', 'tranvane@example.com'),
  (20220001, 'Olivia Anderson', 'Male', 'Kỹ thuật Cơ khí', 2025, 'nguyenvanj', 'nguyenvanj', 'nguyenvanj@example.com'),
  (20220002, 'Ava Thompson', 'Female', 'Quản trị Kinh doanh', 2025, 'tranthik', 'tranthik', 'tranthik@example.com'),
  (20230001, 'James Lee', 'Male', 'Kỹ thuật Điện tử', 2027, 'levanl', 'levanl', 'levanl@example.com'),
  (20230002, 'Sophie Clark', 'Female', 'Kỹ thuật Môi trường', 2027, 'phamthim', 'phamthim', 'phamthim@example.com'),
  (20230003, 'Matthew Wright', 'Male', 'Kỹ thuật Xây dựng', 2026, 'hoangvann', 'hoangvann', 'hoangvann@example.com'),
  (20220004, 'Isabella Turner', 'Female', 'Kinh tế', 2026, 'dangthio', 'dangthio', 'dangthio@example.com'),
  (20230005, 'Andrew Phillips', 'Male', 'Khoa Học Máy tính', 2027, 'nguyenvanp', 'nguyenvanp', 'nguyenvanp@example.com'),
  (20230006, 'Emily Rodriguez', 'Female', 'Quản trị Kinh doanh', 2027, 'tranthiq', 'tranthiq', 'tranthiq@example.com'),
  (20210007, 'William Scott', 'Male', 'Kỹ thuật Điện tử', 2026, 'levanr', 'levanr', 'levanr@example.com'),
  (20220008, 'Grace Lewis', 'Female', 'Kỹ thuật Môi trường', 2026, 'phamthis', 'phamthis', 'phamthis@example.com'),
  (20230009, 'Victoria Turner', 'Female', 'Khoa Học Máy tính', 2027, 'nguyenthit', 'nguyenthit', 'nguyenthit@example.com'),
  (20230010, 'David Johnson', 'Male', 'Kỹ thuật Điện tử', 2026, 'tranvanu', 'tranvanu', 'tranvanu@example.com'),
  (20200011, 'Sophia White', 'Female', 'Kỹ thuật Môi trường', 2024, 'lethiv', 'lethiv', 'lethiv@example.com'),
  (20200002, 'John Smith', 'Male', 'Quản trị Kinh doanh', 2024, 'phamvanc1', 'phamvanc1', 'phamvanc1@example.com');


INSERT INTO achievement (mssv, cpa, programming_lang, language_cert, project, internship_experience)
VALUES
(20180001, 3.5, 'Java', 'TOEFL', 'Aurora Rising', 'Internship at XYZ Company'),
(20180002, 3.2, 'Python', 'IELTS', 'Stellar Fusion', 'Internship at ABC Corporation'),
(20180003, 3.8, 'C++', 'TOEIC', 'Moonlight Serenade', 'Internship at DEF Inc.'),
(20190001, 3.6, 'Java', 'TOEFL', 'Galaxy Quest', 'Internship at GHI Corporation'),
(20190002, 3.9, 'Python', 'IELTS', 'Infinite Horizons', 'Internship at JKL Company'),
(20220001, 3.7, 'C++', 'TOEIC', 'Quantum Nexus', 'Internship at MNO Corporation'),
(20220002, 3.4, 'Java', 'TOEFL', 'Solaris Odyssey', 'Internship at PQR Inc.'),
(20230001, 3.1, 'Python', 'IELTS', 'Nebula Chronicles', 'Internship at STU Corporation'),
(20230002, 3.9, 'C++', 'TOEIC', 'Celestial Symphony', 'Internship at VWX Company'),
(20230003, 3.8, 'Java', 'TOEFL', 'Project Epsilon', 'Internship at YZA Corporation'),
(20220004, 3.2, 'Python', 'IELTS', 'Genesis Frontier', 'Internship at BCD Inc.'),
(20230005, 3.6, 'C++', 'TOEIC', 'Lunar Mirage', 'Internship at EFG Corporation'),
(20230006, 3.7, 'Java', 'TOEFL', 'Astral Enigma', 'Internship at HIJ Company'),
(20210007, 3.5, 'Python', 'IELTS', 'Nova Vanguard', 'Internship at KLM Corporation'),
(20220008, 3.9, 'C++', 'TOEIC', 'Orions Legacy', 'Internship at PQR Inc.'),
(20230009, 3.6, 'Java', 'TOEFL', 'Comet Catalyst', 'Internship at STU Corporation'),
(20230010, 3.4, 'Python', 'IELTS', 'Solstice Nexus', 'Internship at VWX Company'),
(20200011, 3.8, 'C++', 'TOEIC', 'Cosmic Dreamers', 'Internship at YZA Corporation'),
(20200002, 3.2, 'Java', 'TOEFL', 'Stardust Symphony', 'Internship at BCD Inc.');
