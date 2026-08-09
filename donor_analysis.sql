/*
Education for All
Nonprofit Donor & Fundraising Analysis

Purpose:
Analyze donor behavior and donation patterns to identify
opportunities to increase donor participation, donation
frequency, and overall donation value.
*/


-- =====================================================
-- 1. DONATION SUMMARY BY GENDER
-- =====================================================

SELECT gender, SUM(donation)
FROM Donation_Data
GROUP BY gender
ORDER BY SUM(donation) DESC;


-- =====================================================
-- 2. TOP 5 STATES BY DONATION VALUE
-- =====================================================

SELECT state, SUM(donation)
FROM Donation_Data
GROUP BY state
ORDER BY SUM(donation) DESC
LIMIT 5;


-- =====================================================
-- 3. BOTTOM 5 STATES BY DONATION VALUE
-- =====================================================

SELECT state, SUM(donation)
FROM Donation_Data
GROUP BY state
ORDER BY SUM(donation) ASC
LIMIT 5;


-- =====================================================
-- 4. DONATION FREQUENCY BY GENDER & JOB FIELD
-- Example shown for female one-time donors
-- =====================================================

SELECT Donation_Data.gender,
       Donor_Data2.donation_frequency,
       Donation_Data.job_field,
       COUNT(*)
FROM Donation_Data
LEFT JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE donation_frequency = 'Once'
AND gender = 'Female'
GROUP BY job_field
ORDER BY COUNT(*) DESC;


-- =====================================================
-- 5. DONORS WITHOUT UNIVERSITY EDUCATION
-- =====================================================

SELECT university, COUNT(donation)
FROM Donation_Data
LEFT JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE university IS NULL
GROUP BY university
ORDER BY COUNT(donation) DESC;


-- =====================================================
-- 6. HIGH-VALUE DONORS WITHOUT UNIVERSITY EDUCATION
-- =====================================================

SELECT Donation_Data.gender,
       Donation_Data.donation,
       Donor_Data2.university
FROM Donation_Data
LEFT JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE university IS NULL
AND donation >= 400
ORDER BY donation DESC;
