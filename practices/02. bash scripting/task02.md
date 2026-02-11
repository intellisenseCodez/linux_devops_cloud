## Task: Bash Project: System Resource Monitor with Alerts

Build a Bash script called: `system_monitor.sh`

The script should:
1. Display: CPU Usage, Memory Usage and Disk Usage  `(Hint: top, free, df, awk, grep)`
2. Check usage levels
3. Print warnings using conditional statements

📌 If CPU usage > 80 → print: `WARNING: CPU usage is critically high!` , If CPU usage between 50–80 → print: `CPU usage is moderate`. Else: `CPU usage is normal.`

📌 If Memory usage > 75 → print: `WARNING: Memory usage is high!` , Else: `Memory usage is under control.` 

📌 If Disk usage > 85 → print: `CRITICAL: Disk almost full!` , If Disk usage between 60–85 → print: `Disk usage is getting high.` , Else: `Disk usage is healthy.` 

📌 If: CPU > 80 OR Memory > 75 OR Disk > 85 Then print: `SYSTEM STATUS: CRITICAL` , Else: `SYSTEM STATUS: STABLE `