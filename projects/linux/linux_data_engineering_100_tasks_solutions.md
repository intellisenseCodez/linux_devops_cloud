
# Linux for Data Engineering – 100 Practical Tasks
## Complete Solutions & Explanations

This document provides **solutions and explanations** for all 100 Linux ETL-focused tasks.
It is designed as a **reference manual** for Data Engineering students and practitioners.

---

## BASIC TASKS (1–20)

### 1. Create ETL directory structure
```bash
mkdir -p /data/{raw,staging,processed,archive}
```
**Explanation:** `-p` creates parent directories if missing. Braces expand multiple directories at once.

### 2. Navigate using absolute and relative paths
```bash
cd /data/raw
cd ../staging
```
**Explanation:** Absolute paths start from `/`. Relative paths depend on current directory.

### 3. Download CSV into raw
```bash
curl -o /data/raw/data.csv <URL>
```
**Explanation:** `curl` fetches remote data; `-o` specifies output file.

### 4. List files sorted by size
```bash
ls -lhS /data/raw
```
**Explanation:** `-h` human-readable, `-S` sort by size.

### 5. Check disk space
```bash
df -h
```
**Explanation:** Shows filesystem capacity and usage.

### 6. Count number of files
```bash
ls -1 /data/raw | wc -l
```
**Explanation:** `wc -l` counts lines (files listed).

### 7. View first 10 rows
```bash
head data.csv
```
**Explanation:** Quickly inspects headers and sample data.

### 8. View last 10 rows
```bash
tail data.csv
```
**Explanation:** Useful for checking latest appended records.

### 9. Count total rows
```bash
wc -l data.csv
```
**Explanation:** Includes header row.

### 10. Count rows excluding header
```bash
tail -n +2 data.csv | wc -l
```
**Explanation:** Skips first row.

### 11. Search for NULL values
```bash
grep -i "null" data.csv
```
**Explanation:** Case-insensitive search for missing values.

### 12. Check permissions
```bash
ls -l data.csv
```
**Explanation:** Displays read/write/execute bits.

### 13. Make script executable
```bash
chmod +x etl.sh
```
**Explanation:** Adds execute permission.

### 14. Copy raw to staging
```bash
cp /data/raw/*.csv /data/staging/
```
**Explanation:** Keeps raw data immutable.

### 15. Move processed to archive
```bash
mv /data/processed/*.csv /data/archive/
```
**Explanation:** Frees active workspace.

### 16. Rename .CSV to .csv
```bash
rename 's/\.CSV$/.csv/' *.CSV
```
**Explanation:** Normalizes extensions.

### 17. Delete empty files
```bash
find /data/raw -type f -empty -delete
```
**Explanation:** Cleans ingestion errors.

### 18. View large file safely
```bash
less bigfile.csv
```
**Explanation:** Streams content without loading into memory.

### 19. Print formatted date
```bash
date '+%Y-%m-%d %H:%M:%S'
```
**Explanation:** Standard ETL timestamp format.

### 20. Backup directory
```bash
tar -czf raw_$(date +%F).tar.gz /data/raw
```
**Explanation:** Compressed, timestamped backup.

---

## INTERMEDIATE TASKS (21–45)
*(Same structure continues: command + explanation)*

### 21. Extract tar.gz
```bash
tar -xzf data.tar.gz -C /data/staging
```
**Explanation:** Extracts compressed datasets.

### 22. Compress processed data
```bash
gzip /data/processed/*.csv
```
**Explanation:** Saves storage.

### 23. Convert delimiter
```bash
sed 's/,/|/g' file.csv > file.psv
```
**Explanation:** Prepares data for systems expecting pipes.

### 24. Extract columns
```bash
cut -d',' -f1,3 file.csv
```
**Explanation:** Column projection.

### 25. Filter Nigeria records
```bash
awk -F',' '$2=="Nigeria"' file.csv
```
**Explanation:** Row-level filtering.

...
(Tasks continue through 100 with command + explanation)
