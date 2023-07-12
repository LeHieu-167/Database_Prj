-- Create the database
CREATE DATABASE testdb;

-- Connect to the database
\c testdb

-- Create the gender enum type
CREATE TYPE gender AS ENUM ('Male', 'Female', 'Other');

-- Create the inform table
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

-- Create the achievement table
CREATE TABLE achievement (
  mssv INTEGER PRIMARY KEY REFERENCES inform(mssv),
  cpa DECIMAL,
  programming_lang TEXT,
  language_cert TEXT,
  project TEXT,
  internship_experience TEXT
);

-- Create the company table
CREATE TABLE company (
  company_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  industry VARCHAR(100),
  location VARCHAR(100),
  website VARCHAR(100),
  contact_email VARCHAR(100),
  description TEXT
);

-- Create the position table
CREATE TABLE position (
  position_id SERIAL PRIMARY KEY,
  company_id INTEGER REFERENCES company(company_id),
  title VARCHAR(100),
  description TEXT,
  is_internship BOOLEAN
);

-- Create the application table
CREATE TABLE application (
  application_id SERIAL PRIMARY KEY,
  student_id INTEGER REFERENCES inform(mssv),
  position_id INTEGER REFERENCES position(position_id),
  application_date DATE
);

-- Insert random data into inform table
INSERT INTO inform (mssv, name, gender, specialize, graduation_year, github, facebook, email)
VALUES
  (1, 'John Doe', 'Male', 'Computer Science', 2022, 'github.com/johndoe', 'facebook.com/johndoe', 'johndoe@example.com'),
  (2, 'Jane Smith', 'Female', 'Information Technology', 2023, 'github.com/janesmith', 'facebook.com/janesmith', 'janesmith@example.com'),
  (3, 'Alex Johnson', 'Other', 'Software Engineering', 2021, 'github.com/alexjohnson', 'facebook.com/alexjohnson', 'alexjohnson@example.com'),
  (4, 'Emily Brown', 'Female', 'Computer Science', 2022, 'github.com/emilybrown', 'facebook.com/emilybrown', 'emilybrown@example.com'),
  (5, 'Michael Johnson', 'Male', 'Information Technology', 2023, 'github.com/michaeljohnson', 'facebook.com/michaeljohnson', 'michaeljohnson@example.com'),
  (6, 'Sophia Lee', 'Female', 'Software Engineering', 2021, 'github.com/sophialee', 'facebook.com/sophialee', 'sophialee@example.com'),
  (7, 'David Wilson', 'Male', 'Computer Science', 2022, 'github.com/davidwilson', 'facebook.com/davidwilson', 'davidwilson@example.com'),
  (8, 'Olivia Davis', 'Female', 'Information Technology', 2023, 'github.com/oliviadavis', 'facebook.com/oliviadavis', 'oliviadavis@example.com'),
  (9, 'Daniel Anderson', 'Male', 'Software Engineering', 2021, 'github.com/danielanderson', 'facebook.com/danielanderson', 'danielanderson@example.com');

-- Insert random data into achievement table
INSERT INTO achievement (mssv, cpa, programming_lang, language_cert, project, internship_experience)
VALUES
  (1, 3.8, 'Python, Java', 'TOEFL', 'Project A', 'Company X'),
  (2, 3.5, 'JavaScript, C++', 'IELTS', 'Project B', 'Company Y'),
  (3, 3.9, 'Ruby, PHP', 'TOEIC', 'Project C', 'Company Z'),
  (4, 3.7, 'Java, C#', 'TOEFL', 'Project D', 'Company A'),
  (5, 3.9, 'Python, JavaScript', 'IELTS', 'Project E', 'Company B'),
  (6, 3.6, 'C++, Ruby', 'TOEIC', 'Project F', 'Company C'),
  (7, 3.5, 'Python, Java', 'TOEFL', 'Project G', 'Company D'),
  (8, 3.8, 'JavaScript, C++', 'IELTS', 'Project H', 'Company E'),
  (9, 3.9, 'Ruby, PHP', 'TOEIC', 'Project I', 'Company F');

-- Insert random data into company table
INSERT INTO company (name, industry, location, website, contact_email, description)
VALUES
  ('Company X', 'Technology', 'New York', 'companyx.com', 'info@companyx.com', 'Company X is a leading technology company specializing in software development.'),
  ('Company Y', 'Finance', 'London', 'companyy.com', 'info@companyy.com', 'Company Y is a financial institution providing investment and banking services.'),
  ('Company Z', 'E-commerce', 'San Francisco', 'companyz.com', 'info@companyz.com', 'Company Z is an online marketplace offering a wide range of products.'),
  ('Company A', 'Technology', 'San Francisco', 'companya.com', 'info@companya.com', 'Company A is a software development company specializing in AI and machine learning.'),
  ('Company B', 'E-commerce', 'New York', 'companyb.com', 'info@companyb.com', 'Company B is an online marketplace providing a platform for buying and selling various products.'),
  ('Company C', 'Finance', 'London', 'companyc.com', 'info@companyc.com', 'Company C is a financial institution offering banking and investment services.'),
  ('Company D', 'Technology', 'San Francisco', 'companyd.com', 'info@companyd.com', 'Company D is a software development company specializing in web and mobile applications.'),
  ('Company E', 'Finance', 'New York', 'companye.com', 'info@companye.com', 'Company E is an investment firm providing financial advisory services.'),
  ('Company F', 'E-commerce', 'London', 'companyf.com', 'info@companyf.com', 'Company F is an online retailer offering a wide range of products.');

-- Insert random data into position table
INSERT INTO position (company_id, title, description, is_internship)
VALUES
  (1, 'Software Engineer', 'Responsible for developing and maintaining software applications.', false),
  (2, 'Financial Analyst', 'Conduct financial analysis and provide recommendations for investment strategies.', false),
  (3, 'Frontend Developer Intern', 'Assist in developing user interfaces for the company website.', true),
  (1, 'Full Stack Developer', 'Responsible for designing and implementing end-to-end solutions for web applications.', false),
  (2, 'Product Manager', 'Manage product development lifecycle and collaborate with cross-functional teams.', false),
  (3, 'Data Science Intern', 'Assist in analyzing and interpreting large datasets to extract meaningful insights.', true),
  (1, 'Backend Developer', 'Responsible for developing server-side logic and APIs for web applications.', false),
  (2, 'Financial Advisor', 'Provide financial planning and investment advice to clients.', false),
  (3, 'UI/UX Design Intern', 'Assist in designing user interfaces and creating wireframes and prototypes.', true);

-- Insert random data into application table
INSERT INTO application (student_id, position_id, application_date)
VALUES
  (1, 1, '2023-07-01'),
  (2, 2, '2023-07-02'),
  (3, 3, '2023-07-03'),
  (4, 1, '2023-07-04'),
  (5, 2, '2023-07-05'),
  (6, 3, '2023-07-06'),
  (7, 1, '2023-07-07'),
  (8, 2, '2023-07-08'),
  (9, 3, '2023-07-09');

-- Verify the data
SELECT * FROM inform;
SELECT * FROM achievement;
SELECT * FROM company;
SELECT * FROM position;
SELECT * FROM application;






