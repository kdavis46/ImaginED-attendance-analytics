# Dashboard Metrics

## Total Attendance

```DAX
Total Attendance = COUNT(attendance[attendance_id])
```

## Total Absences

```DAX
Total Absences =
CALCULATE(
    COUNT(attendance[attendance_id]),
    attendance[status] = "Absent"
)
```

## Attendance Rate

```DAX
Attendance Rate =
DIVIDE(
    [Present Attendance],
    [Total Attendance]
)
```

## Average Engagement Score

```DAX
Average Engagement Score =
AVERAGE(attendance[engagement_score])
```
