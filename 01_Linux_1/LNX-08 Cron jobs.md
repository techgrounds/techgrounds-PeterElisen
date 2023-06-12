# LNX-08 Cron jobs
 
A cron job is a time-based job scheduler in Linux and Unix-like operating systems. It allows you to schedule and automate the execution of tasks or commands at specified intervals or specific times. These tasks, known as cron jobs, are typically used for system maintenance, periodic backups, log rotations, data synchronization, and other repetitive or scheduled activities.

## Key-terms 

Here are some key aspects of cron jobs:

1. **Cron daemon**: The cron daemon (`cron`) is a background process that runs on the system and checks the cron table at regular intervals to see if any scheduled tasks need to be executed.

2. **Cron table**: The cron table is a configuration file that lists the cron jobs and their respective schedules. In Linux, the cron table is typically located at `/etc/crontab`, and each user can have their own personal cron table, usually located at `/var/spool/cron/crontabs/username`.

3. **Cron syntax**: The cron syntax specifies the schedule for a cron job. It consists of fields representing the minute, hour, day of the month, month, and day of the week when the task should be executed. You can use specific values, wildcards, ranges, and special characters to define the schedule.

4. **Cron job command**: The cron job command is the task or command that you want to run at the scheduled time. It can be any valid shell command or script.

5. **Logging and output**: By default, the output of a cron job is sent to the owner of the cron job via email. You can also redirect the output to a file by specifying the file path within the cron job command.

To create a cron job, you need to edit the cron table using a text editor and add an entry specifying the schedule and command. The syntax for adding a cron job entry is as follows:

```
* * * * * command-to-be-executed
```

Each asterisk (*) represents a field for the minute, hour, day of the month, month, and day of the week, respectively. You can set specific values or use wildcards and ranges to define the schedule.

Cron jobs provide a powerful way to automate recurring tasks in Linux, allowing you to free up time and ensure that important operations are executed automatically according to your desired schedule.
  

## Opdracht 

- Create a Bash script that writes the current date and time to a file in your home directory.
- Register the script in your crontab so that it runs every minute.
- Create a script that writes available disk space to a log file in ‘/var/logs’. Use a cron job so that it runs weekly.



### Gebruikte bronnen 

https://chat.openai.com 

  

### Ervaren problemen 


### Resultaat 

#### Create a Bash script that writes the current date and time to a file in your home directory.


Used code  
---------

#!/bin/bash

# Get the current date and time
current_date=$(date)

# Specify the file path
file_path="$HOME/current_date.txt"

# Write the date and time to the file
echo "$current_date" > "$file_path"

# Display a success message
echo "Current date and time written to $file_path"



1. create the script, follow these steps:

2. Open a text editor.

3, Copy and paste the above code into the text editor.

4. Save the file with a .sh extension, for example, current_date_script.sh.

    i have created current_date_script.sh in the folder : ~/techgrounds_repo/techgrounds-PeterElisen/01_Linux_1



5. Make the script executable by running the following command in the terminal:

    chmod +x current_date_script.sh

    to run the scipt i did : ~/techgrounds_repo/techgrounds-PeterElisen/01_Linux_1$ ./current_date_script.sh

    Result : Current date and time written to /home/peterelisen/current_date.txt


### Register the script in your crontab so that it runs every minute.

To register the Bash script in the crontab so that it runs every minute, you can follow these steps:

1. Open your terminal.

2. Type the following command to open the crontab file for editing:
   
   crontab -e
   

3. If prompted, choose an editor (such as nano) to edit the crontab file.

4. In the crontab file, add the following line at the end to schedule the script to run every minute:
   ```
   * * * * * /path/to/your/script.sh
   ```
   Replace `/path/to/your/script.sh` with the actual file path of your Bash script.

5. Save the crontab file and exit the editor.

The above crontab entry uses the following cron syntax: `* * * * *`. Each asterisk represents a field for the minute, hour, day of the month, month, and day of the week, respectively. By setting all fields to asterisks, the script will be executed every minute.

After saving the crontab file, the script will be automatically scheduled to run every minute. It will write the current date and time to the specified file in your home directory. Make sure the script has executable permissions (`chmod +x script.sh`) before adding it to the crontab.

Note that running a script every minute can generate a lot of output or write data frequently, so ensure that the script's actions are suitable for frequent execution.









