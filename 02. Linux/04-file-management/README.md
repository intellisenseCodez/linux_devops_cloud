# File management in Linux

### File and Directory Management
- `touch filename` - create an empty file
- `ls` – Lists files and directories in the current location.
- `ls -ltr` 
- `cd /path/to/directory` – Changes the working directory.
- `pwd` – Prints the current working directory.
- `mkdir new_folder` – Creates a new directory.
- `rmdir empty_folder` – Removes an empty directory.
- `rm file.txt` – Deletes a file.
- `rm -r folder` – Deletes a folder and its contents.
- `cp file1.txt file2.txt` – Copies a file.
- `cp -r dir1 dir2` – Copies a directory recursively.
- `mv src_file target_file` – Moves or renames a file or directory.

### File Viewing and Editing
- `cat file.txt` – Displays file content.
- `tac file.txt` – Displays file content in reverse order.
- `less file.txt` – Opens a file for viewing with scrolling support.
- `more file.txt` – Similar to `less`, but only moves forward.
- `head -n 10 file.txt` – Displays the first 10 lines of a file.
- `tail -n 10 file.txt` – Displays the last 10 lines of a file.
- `nano file.txt` – Opens a simple text editor.
- `vi file.txt` – Opens a powerful text editor.
- `echo 'Hello' > file.txt` – Writes text to a file, overwriting existing content.
- `echo 'Hello' >> file.txt` – Appends text to a file without overwriting.

### File Searching and Pipeing
- `grep pattern file.txt` - used to search for lines in a file that match a given pattern
- `grep (pattern1|pattern2|..) file.txt` - used to search for multiple patterns at once using OR logic.
- `grep -E 'pattern1|pattern2|pattern3' file.txt` -
- `egrep (pattern1|pattern2|..) file.txt` -
- `cat file.txt | grep patten` - Piping (|) allows you to send the output of one command as input to another.
- `ps aux | grep nginx` - Piping multiple commands
- `find path -name file` -


## File Pattern Matching
- `*` — Match zero or more characters
- `?` — Match exactly one character
- `[]` — Match a range or set of characters

## Processing and Extracting Files in Linux

- `file filename` - Display the format of a given file.
- `nohup command [arguments] &` - runs the command in the background.
- `cut -d, -f1 fiilename`: extract the fields (column) from each line of a file
- `awk -F"," '{print $4}' filename`: extract the fields (column) from each line of a file
- `sed`
- `sort filename`: sort data in files 
- `sort -u filename`: get unique values in a file 
- `uniq filename`: to filter out repeated (duplicate) adjacent lines in a file.
- `tar -czvf file`: create compress backup for files and folder
- `tar -xvf file`: restore compress backup for files and folder

## Comparing Files and Folders
- `diff filename1 filename2` - used to compare two text files or directories line by line and display the differences
