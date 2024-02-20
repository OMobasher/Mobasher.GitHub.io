SELECT * FROM student_mental_health_data.`student mental health data`;
SELECT * FROM student_mental_health_data;
SELECT * FROM student_mental_health_data WHERE Gender = 'Male';
SELECT AVG(Age) AS Average_Age FROM student_mental_health_data;
SELECT * FROM student_mental_health_data LIMIT 10;
SELECT Academic, AVG(DepSev) AS Avg_Depression_Severity
FROM student_mental_health_data
GROUP BY Academic;
-- Retrieve a sample of the data to better understand its structure and contents
SELECT * FROM student_mental_health_data LIMIT 10;

-- Explore the relationship between depression severity and academic performance
SELECT Academic, AVG(DepSev) AS Avg_Depression_Severity
FROM student_mental_health_data
GROUP BY Academic;

-- Analyze the distribution of help-seeking behaviors by gender
SELECT Gender, SUM(Help_Seeking_Behaviors_Column) AS Total_Help_Seeking_Behaviors
FROM student_mental_health_data
GROUP BY Gender;

-- Investigate the correlation between depression and help-seeking behaviors
SELECT AVG(DepSev) AS Avg_Depression_Severity, SUM(Help_Seeking_Behaviors_Column) AS Total_Help_Seeking_Behaviors
FROM student_mental_health_data;
SELECT * FROM student_mental_health_data LIMIT 1000;
SELECT * FROM student_mental_health_data;
SELECT * FROM student_mental_health_data WHERE DepSev > 15;
SELECT AVG(DepSev) AS Average_Depression_Severity FROM student_mental_health_data;
INSERT INTO student_mental_health_data (inter_dom, Region, Gender, Academic, Age, DepSev)
VALUES ('Domestic', 'Asia', 'Male', 'Undergraduate', 20, 12);
UPDATE student_mental_health_data SET DepSev = 18 WHERE student_id = 1;
DELETE FROM student_mental_health_data WHERE student_id = 1;
CREATE TABLE interventions (
    intervention_id INT AUTO_INCREMENT PRIMARY KEY,
    intervention_name VARCHAR(255),
    effectiveness_rating INT
);
CREATE INDEX idx_DepSev ON student_mental_health_data (DepSev);
SELECT Academic, AVG(DepSev) AS Avg_Depression_Severity
FROM student_mental_health_data
GROUP BY Academic;
SELECT Gender, COUNT(*) AS Total_Help_Seeking
FROM student_mental_health_data
WHERE HelpSeeking = 1
GROUP BY Gender;
SELECT Social_Activity, AVG(Depressed) AS Avg_Depression
FROM student_mental_health_data
GROUP BY Social_Activity;
-- Average age of depressed students
SELECT AVG(Age) AS Average_Age_Of_Depressed_Students
FROM student_mental_health_data
WHERE Depressed = 1;

-- Gender differences in depression (count of depressed students by gender)
SELECT Gender, COUNT(*) AS Count_Of_Depressed_Students
FROM student_mental_health_data
WHERE Depressed = 1
GROUP BY Gender;

-- Average education level of depressed students (assuming education level is represented by an ordinal number)
SELECT AVG(Education_Level) AS Average_Education_Level_Of_Depressed_Students
FROM student_mental_health_data
WHERE Depressed = 1;

-- Most common education level among depressed students
SELECT Education_Level, COUNT(*) AS Count
FROM student_mental_health_data
WHERE Depressed = 1
GROUP BY Education_Level
ORDER BY Count DESC
LIMIT 1;
-- Average age of depressed students (assuming 'Dep' column indicates depression status, 1 for depressed)
SELECT AVG(Age) AS Average_Age_Of_Depressed_Students
FROM student_mental_health_data
WHERE Dep = 1;

-- Gender differences in depression (count of depressed students by gender)
SELECT Gender, COUNT(*) AS Count_Of_Depressed_Students
FROM student_mental_health_data
WHERE Dep = 1
GROUP BY Gender;

-- Average education level of students with mental health issues (assuming 'Academic' represents education level)
SELECT AVG(Age) AS Average_Age_Of_Students_With_Mental_Health_Issues
FROM student_mental_health_data
WHERE Dep = 1;

-- Most common education level among students with mental health issues
SELECT Academic, COUNT(*) AS Count
FROM student_mental_health_data
WHERE Dep = 1
GROUP BY Academic
ORDER BY Count DESC
LIMIT 1;
