CREATE TABLE complaints (
    complaint_id VARCHAR(20) PRIMARY KEY,
    submitted_via VARCHAR(50),
    date_submitted DATE,
    date_received DATE,
    state VARCHAR(5),
    product VARCHAR(100),
    sub_product VARCHAR(150),
    issue VARCHAR(200),
    sub_issue VARCHAR(200),
    company_public_response VARCHAR(200),
    company_response VARCHAR(100),
    timely_response VARCHAR(20),
    days_to_receive INT
);
USE consumer_complaints_db;
SELECT COUNT(*) FROM complaints;
SHOW TABLES;
SELECT COUNT(*) FROM complaints;
SELECT * FROM complaints LIMIT 10;
SELECT product, COUNT(*) AS total_complaints
FROM complaints
GROUP BY product
ORDER BY total_complaints DESC;
SELECT timely_response,
       COUNT(*) AS count,
       ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM complaints), 2) AS percentage
FROM complaints
GROUP BY timely_response;
SELECT state, COUNT(*) AS complaints
FROM complaints
GROUP BY state
ORDER BY complaints DESC
LIMIT 10;
SELECT state, COUNT(*) AS complaints
FROM complaints
GROUP BY state
ORDER BY complaints ASC
LIMIT 10;
SELECT submitted_via,
       ROUND(AVG(days_to_receive), 1) AS avg_days,
       COUNT(*) AS total
FROM complaints
GROUP BY submitted_via
ORDER BY avg_days;
SELECT YEAR(date_submitted) AS year,
       COUNT(*) AS total
FROM complaints
GROUP BY year
ORDER BY year;
SELECT issue, COUNT(*) AS total
FROM complaints
GROUP BY issue
ORDER BY total DESC
LIMIT 10;
SELECT company_response, COUNT(*) AS total,
       ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM complaints), 2) AS percentage
FROM complaints
GROUP BY company_response
ORDER BY total DESC;
SELECT product,
       ROUND(AVG(days_to_receive), 1) AS avg_days,
       COUNT(*) AS total_complaints
FROM complaints
GROUP BY product
ORDER BY avg_days DESC;
SELECT submitted_via,
       COUNT(*) AS total,
       ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM complaints), 2) AS percentage
FROM complaints
GROUP BY submitted_via
ORDER BY total DESC;
SELECT product, COUNT(*) AS in_progress
FROM complaints
WHERE company_response = 'In Progress'
GROUP BY product
ORDER BY in_progress DESC;
SELECT company_response,
       ROUND(AVG(days_to_receive), 1) AS avg_days,
       COUNT(*) AS total
FROM complaints
GROUP BY company_response
ORDER BY avg_days DESC;
SELECT sub_issue, COUNT(*) AS total
FROM complaints
WHERE sub_issue != 'Not Specified'
GROUP BY sub_issue
ORDER BY total DESC
LIMIT 10;


