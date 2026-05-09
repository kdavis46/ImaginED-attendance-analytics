SELECT
    school_name,
    COUNT(*) AS total_attendance
FROM attendance
GROUP BY school_name;

SELECT
    program_name,
    AVG(engagement_score) AS avg_engagement
FROM attendance
GROUP BY program_name;

SELECT
    status,
    COUNT(*) AS attendance_count
FROM attendance
GROUP BY status;
