CREATE TABLE programs (
    program_id TEXT PRIMARY KEY,
    program_name VARCHAR(100),
    program_type VARCHAR(100),
    start_date DATE,
    end_date DATE,
    cost NUMERIC(12,2),
    target_age_group VARCHAR(50),
    location VARCHAR(100)
);

CREATE TABLE attendance (
    attendance_id TEXT PRIMARY KEY,
    student_id TEXT,
    program_id TEXT,
    session_date DATE,
    status VARCHAR(50),
    duration_minutes INTEGER,
    engagement_score NUMERIC(3,2),

    FOREIGN KEY (program_id)
    REFERENCES programs(program_id)
);
