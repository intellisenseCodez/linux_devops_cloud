# 100 Linux Practical Exercises for Data Engineering (ETL-Focused)

Below are **100 Linux practical exercises, explicitly mapped to real Data Engineering workflows (ETL, ingestion, processing, orchestration, monitoring)** and **ranked by difficulty**.

Each exercise highlights **core Linux commands every Data Engineer must master**.

This is suitable for:

- Data Engineering bootcamps
- Internship screening
- Hands-on labs
- Interview preparation

## Dataset Sources (Use One or More)
Public CSV datasets (KGitHub)
- https://raw.githubusercontent.com/mwaskom/seaborn-data/master/flights.csv
- https://raw.githubusercontent.com/plotly/datasets/master/2014_world_gdp_with_codes.csv
- https://people.sc.fsu.edu/~jburkardt/data/csv/addresses.csv


## 🟢 BASIC — Linux Foundations for Data Engineers

1. Create an ETL directory structure:
```bash
/data
├── raw
├── staging
├── processed
├── archive
├── logs
└── backups
```

2. Navigate between ETL directories using both relative and absolute paths.
3. Download a public CSV dataset from the internet into `/data/raw`.
4. List all files in `/data/raw` sorted by file size (largest first).
5. Check available disk space on the machine hosting the data pipeline.
6. Count how many files exist in `/data/raw`.
7. Display the first 10 rows of a CSV file to inspect headers.
8. Display the last 10 rows to inspect recent records.
9. Count total number of rows in a CSV file.
10. Count rows excluding the header row.
11. Search for rows containing `NULL`, `null`, or empty fields.
12. Display file permissions for ingested datasets.
13. Modify permissions to make a shell ETL script executable.
14. Copy raw data files into `/data/staging`.
15. Move processed datasets into `/data/archive`.
16. Rename all `.CSV` files to `.csv`.
17. Delete zero-byte files from the raw directory.
18. View large CSV files without loading them fully into memory.
19. Print the current date and time in `YYYY-MM-DD HH:MM:SS` format.
20. Create a timestamped backup of `/data/raw` as a `.tar.gz` file.

---

## 🟡 INTERMEDIATE — ETL Processing, Automation & Validation

21. Extract a `.tar.gz` dataset into the staging directory.
22. Compress processed datasets to reduce storage usage.
23. Convert a CSV file from comma-delimited to pipe-delimited format.
24. Extract only selected columns (e.g id, country, amount) from a dataset.
25. Filter records where `country = Nigeria`.
26. Remove duplicate rows from a dataset.
27. Sort a dataset numerically by a transaction amount column.
28. Validate schema consistency by checking column counts across rows.
29. Replace missing or empty values with a default value (e.g `0` or `UNKNOWN`).
30. Merge multiple daily CSV files into a single consolidated file.
31. Split a very large CSV file into chunks of 1 million rows each.
32. Compare yesterday’s dataset with today’s to detect changes.
33. Generate checksums for ingested files.
34. Verify file integrity after transfer using checksums.
35. Redirect ETL script output into a log file.
36. Redirect errors into a separate error log file.
37. Continuously monitor disk usage while ETL jobs are running.
38. List all running ETL-related processes.
39. Identify and terminate a stuck or runaway ETL process.
40. Schedule a daily ETL script using `cron`.
41. Measure how long an ETL job takes to execute.
42. Parse JSON logs and extract specific fields (e.g status, timestamp).
43. Count frequency of values in a categorical column.
44. Identify the top 10 largest datasets in a data lake directory.
45. Archive files older than 7 days automatically.

---

## 🔴 ADVANCED — Explicit Production-Grade Data Engineering Tasks

46. Write a **Bash ETL pipeline** that:
 - Extracts a CSV from `/data/raw`
 - Cleans NULL values
 - Writes output to `/data/processed`

47. Chain multiple commands using pipes to:
 - Read a CSV
 - Filter records
 - Select columns
 - Write the output to a new file

48. Process a **multi-GB CSV file line-by-line** without loading it fully into memory.

49. Monitor a streaming log file in real-time and extract error messages as they appear.

50. Process multiple CSV files **in parallel** to speed up transformation.

51. Run a heavy ETL job with **reduced CPU priority** so it does not impact other services.

52. Continuously monitor **CPU and memory usage** of a running ETL job.

53. Detect **schema drift** by comparing the number of columns between incoming and historical datasets.

54. Automatically **separate malformed records** into a quarantine file during ingestion.

55. Implement **retry logic** in a Bash ETL script that retries a failed step up to 3 times.

56. Capture exit codes of each ETL step and stop the pipeline if a critical step fails.

57. Automatically compress and archive processed files older than 30 days.

58. Configure **log rotation** for ETL logs to prevent disk exhaustion.

59. Restrict access to sensitive datasets using ownership and permission controls.

60. Audit file access to track who read or modified sensitive data files.

61. Mount an external disk or network volume for bulk data ingestion.

62. Safely unmount the storage device after ingestion completes.

63. Transform multi-GB datasets efficiently using streaming tools (`awk`, `sed`).

64. Detect arrival of new files in `/data/raw` without polling.

65. Automatically trigger an ETL script when a new file arrives.

66. Run an ETL pipeline inside a Docker container using mounted volumes.

67. Share data between host and container using volume mounts.

68. Capture ETL metrics (rows processed, failures) into a monitoring log.

69. Send an email alert when an ETL job fails.

70. Send a Slack alert using a webhook when data validation fails.

71. Validate record counts before and after transformation to ensure no data loss.

72. Compare source vs target row counts and fail the pipeline if mismatched.

73. Redirect rejected records into a dedicated rejection file for analysis.

74. Encrypt backup files before storing them on disk.

75. Decrypt and restore an encrypted backup.

76. Automatically clean up temporary files created during ETL execution.

77. Simulate ETL failures and confirm alerting and retry logic works.

78. Make ETL scripts **idempotent** so reruns do not duplicate data.

79. Maintain a historical execution log of all ETL runs.

80. Enforce dataset naming conventions programmatically.

81. Detect incomplete or partially transferred files before processing.

82. Implement file locking to prevent concurrent ETL jobs from corrupting data.

83. Externalize ETL configuration using environment variables.

84. Parameterize ETL scripts to support multiple datasets with one script.

85. Measure ingestion throughput (rows/sec, MB/sec).

86. Detect inconsistent delimiters in CSV files.

87. Normalize line endings across datasets (Windows vs Unix).

88. Detect and remove non-UTF8 or corrupted characters.

89. Track dataset size growth over time.

90. Implement a self-healing ETL script that restarts on failure.

91. Backfill historical data for a given date range.

92. Handle late-arriving data without overwriting valid data.

93. Implement a dry-run mode that validates ETL steps without writing data.

94. Store ETL scripts in Git and track changes.

95. Package ETL scripts for deployment to another server.

96. Run ETL scripts as background daemons.

97. Monitor ETL pipelines using system-level metrics.

98. Document an entire ETL pipeline using a README file.

99. Audit user access to sensitive datasets for compliance.

100. Build a complete Linux-based ETL lab simulating production workflows.

---

## 🎯 Outcome

Completing these 100 tasks prepares you for:
- Real-world Data Engineering roles
- Production ETL environments
- Linux-heavy interviews
- Cloud data platforms (AWS, GCP, Azure)

This is **industry-grade Linux for Data Engineers**.
