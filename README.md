# 🐧 Linux for DevOps — Complete Practical Guide

A beginner-friendly **Linux command and fundamentals revision repository** created for learning Linux step by step and applying each concept through practical exercises.

This repository is designed for **AWS, DevOps, Cloud and Linux beginners** who want to understand Linux commands by actually using them on an Ubuntu/Linux system.

> **Learning approach:** Learn → Understand → Practice → Troubleshoot → Automate → Document

---

## 📌 What This Repository Covers

This repository covers the Linux fundamentals required for a beginner DevOps engineer:

* Linux fundamentals
* Files and directories
* File management
* File viewing
* Searching files and text
* Pipes and redirection
* Users and groups
* Linux permissions
* `chmod`, `chown`, `chgrp`
* `sudo`
* Processes
* Process monitoring
* `kill`, `pkill`
* Background and foreground jobs
* `systemctl`
* `journalctl`
* Linux networking
* IP addresses
* Network interfaces
* Ports
* TCP/UDP basics
* `ss`
* `ping`
* `curl`
* `wget`
* DNS
* `nslookup`
* `dig`
* Routing
* `traceroute`
* SSH
* SCP
* Rsync
* Shell scripting
* Variables
* User input
* Script arguments
* Conditions
* Loops
* Functions
* Exit codes
* Disk monitoring
* Log monitoring
* Server health checks
* Linux automation

---

# 1. 🐧 Linux Fundamentals

## What is Linux?

Linux is an open-source operating system widely used for:

* Web servers
* Cloud servers
* AWS EC2
* Containers
* Kubernetes
* CI/CD systems
* DevOps automation
* Databases

Most DevOps tools run on Linux servers, so Linux fundamentals are essential for DevOps.

---

# 2. 👤 Identify Current User

## `whoami`

Shows the currently logged-in user.

```bash
whoami
```

Example:

```text
ubuntu
```

### Practical

```bash
whoami
```

**Question:** Which user are you currently logged in as?

---

# 3. 📍 Current Directory

## `pwd`

`pwd` means **Print Working Directory**.

```bash
pwd
```

Example:

```text
/home/ubuntu
```

### Practical

```bash
cd /tmp
pwd
```

---

# 4. 📂 List Files

## `ls`

```bash
ls
```

List detailed information:

```bash
ls -l
```

Show hidden files:

```bash
ls -a
```

Detailed + hidden:

```bash
ls -la
```

### Practical

```bash
ls
ls -l
ls -la
```

Understand the difference between all three.

---

# 5. 📁 Change Directory

## `cd`

```bash
cd /tmp
```

Go to parent directory:

```bash
cd ..
```

Go to home directory:

```bash
cd ~
```

Return to previous directory:

```bash
cd -
```

### Practical

```bash
cd /tmp
pwd

cd ..
pwd

cd ~
pwd
```

---

# 6. 📁 Create Directory

## `mkdir`

```bash
mkdir test
```

Create nested directories:

```bash
mkdir -p project/src/backend
```

### Practical

```bash
mkdir -p ~/linux-practice/projects/app/backend
```

---

# 7. 📄 Create Files

## `touch`

```bash
touch app.txt
```

Create multiple files:

```bash
touch app.txt config.txt notes.txt
```

### Practical

```bash
touch ~/linux-practice/files/app.txt
touch ~/linux-practice/files/config.txt
touch ~/linux-practice/files/notes.txt
```

---

# 8. 📋 Copy Files

## `cp`

```bash
cp app.txt backup.txt
```

Copy to directory:

```bash
cp app.txt /tmp/
```

Copy directory recursively:

```bash
cp -r project backup-project
```

### Practical

```bash
cp app.txt app-backup.txt
```

---

# 9. 🚚 Move / Rename

## `mv`

Rename:

```bash
mv app.txt application.txt
```

Move:

```bash
mv application.txt /tmp/
```

### Practical

```bash
mv notes.txt old-notes.txt
```

---

# 10. 🗑️ Delete Files

## `rm`

```bash
rm file.txt
```

Delete directory recursively:

```bash
rm -r project
```

Force delete:

```bash
rm -rf project
```

> ⚠️ `rm -rf` is dangerous. Always verify the path before executing it.

---

# 11. 📂 Remove Empty Directory

## `rmdir`

```bash
rmdir empty-directory
```

It only removes an empty directory.

---

# 12. 🌳 Directory Structure

Install `tree` if necessary:

```bash
sudo apt update
sudo apt install tree -y
```

Use:

```bash
tree
```

Example:

```text
linux-practice/
├── files/
│   ├── app.txt
│   ├── config.txt
│   └── notes.txt
├── projects/
├── logs/
└── scripts/
```

---

# 13. 👀 View File Content

## `cat`

```bash
cat file.txt
```

Create content:

```bash
echo "Hello DevOps" > file.txt
```

Then:

```bash
cat file.txt
```

---

# 14. 📖 `less`

Used to read large files page by page.

```bash
less application.log
```

Useful keys:

```text
Space       Next page
b           Previous page
/word       Search
q           Quit
```

---

# 15. 📖 `more`

```bash
more application.log
```

Another command for viewing files page by page.

---

# 16. 🔝 `head`

Show first 10 lines:

```bash
head file.txt
```

Show first 5 lines:

```bash
head -5 file.txt
```

---

# 17. 🔚 `tail`

Show last 10 lines:

```bash
tail file.txt
```

Show last 20:

```bash
tail -20 file.txt
```

Monitor a log continuously:

```bash
tail -f application.log
```

---

# 18. 🔎 `grep`

Search text:

```bash
grep "ERROR" application.log
```

Case-insensitive:

```bash
grep -i "error" application.log
```

Show line numbers:

```bash
grep -n "ERROR" application.log
```

Combine:

```bash
grep -i "error" application.log
```

### Important log monitoring

Correct:

```bash
tail -f application.log | grep --line-buffered -i "error"
```

This monitors new log lines and displays matching errors.

---

# 19. 🔍 `find`

Find files:

```bash
find . -name "*.log"
```

Find a specific file:

```bash
find /var/log -name "syslog"
```

Find directories:

```bash
find . -type d
```

Find files:

```bash
find . -type f
```

---

# 20. 🔢 `wc`

Count lines:

```bash
wc -l file.txt
```

Count words:

```bash
wc -w file.txt
```

Count characters:

```bash
wc -m file.txt
```

Example:

```bash
grep "ERROR" application.log | wc -l
```

This counts errors.

---

# 21. 🔤 `sort`

Sort content:

```bash
sort names.txt
```

Reverse:

```bash
sort -r names.txt
```

---

# 22. 🔁 `uniq`

Remove adjacent duplicate lines:

```bash
sort names.txt | uniq
```

Count occurrences:

```bash
sort names.txt | uniq -c
```

---

# 23. 🔗 Pipes `|`

A pipe sends the output of one command to another command.

```bash
ps aux | grep nginx
```

Example:

```bash
grep "ERROR" application.log | wc -l
```

Flow:

```text
grep
  ↓
ERROR lines
  ↓
wc -l
  ↓
number of errors
```

---

# 24. 👥 Users

Show user:

```bash
whoami
```

User information:

```bash
id
```

Groups:

```bash
groups
```

User database:

```bash
cat /etc/passwd
```

Groups database:

```bash
cat /etc/group
```

---

# 25. ➕ Create User

```bash
sudo adduser devuser
```

Switch user:

```bash
su - devuser
```

Return:

```bash
exit
```

---

# 26. 👥 Groups

Create group:

```bash
sudo groupadd developers
```

Add user to group:

```bash
sudo usermod -aG developers devuser
```

Check:

```bash
groups devuser
```

> `-aG` means add the user to the supplementary group without removing existing supplementary groups.

---

# 27. 🔐 Linux Permissions

Example:

```text
-rwxr-x---
```

Permissions are divided into:

```text
Owner | Group | Others
 rwx  | rwx   | rwx
```

Values:

```text
r = 4
w = 2
x = 1
```

Therefore:

```text
rwx = 7
r-x = 5
--- = 0
```

So:

```text
-rwxr-x---
```

means:

```text
750
```

---

# 28. `chmod`

Change permissions:

```bash
chmod 755 script.sh
```

Common permissions:

```bash
chmod 644 file.txt
chmod 755 script.sh
chmod 600 secret.txt
```

Symbolic:

```bash
chmod u+x script.sh
```

Remove permission:

```bash
chmod o-w file.txt
```

Recursive:

```bash
chmod -R 755 project/
```

> Avoid using `chmod 777` unless there is a specific justified requirement.

---

# 29. `chown`

Change ownership:

```bash
sudo chown ubuntu file.txt
```

Change owner and group:

```bash
sudo chown ubuntu:developers file.txt
```

Recursive:

```bash
sudo chown -R ubuntu:developers project/
```

---

# 30. `chgrp`

Change group:

```bash
sudo chgrp developers file.txt
```

---

# 31. `sudo`

Run a command with elevated privileges:

```bash
sudo apt update
```

Check root:

```bash
sudo whoami
```

Output:

```text
root
```

---

# 32. ⚙️ Processes

A process is a running program.

Show processes:

```bash
ps
```

All processes:

```bash
ps aux
```

Find a process:

```bash
ps aux | grep nginx
```

---

# 33. 🔎 `pgrep`

Find process ID:

```bash
pgrep nginx
```

Show PID + command:

```bash
pgrep -a nginx
```

---

# 34. 📊 `top`

Real-time process monitoring:

```bash
top
```

Useful for checking:

* CPU
* Memory
* Processes
* Load

Exit:

```text
q
```

---

# 35. 📊 `htop`

Install:

```bash
sudo apt install htop -y
```

Run:

```bash
htop
```

---

# 36. 🛑 `kill`

Terminate a process gracefully:

```bash
kill PID
```

Explicit SIGTERM:

```bash
kill -15 PID
```

Force terminate:

```bash
kill -9 PID
```

> Prefer graceful termination first. Use `-9` only when necessary.

---

# 37. `pkill`

Kill using process name:

```bash
pkill nginx
```

Be careful with this command.

---

# 38. Background Processes

Run command in background:

```bash
command &
```

Example:

```bash
sleep 100 &
```

Check jobs:

```bash
jobs
```

Bring to foreground:

```bash
fg
```

Send stopped job to background:

```bash
bg
```

---

# 39. `nohup`

Keep a process running after logout:

```bash
nohup ./app.sh &
```

Output normally goes to:

```text
nohup.out
```

Useful for long-running processes.

---

# 40. 🔧 `systemctl`

Check service:

```bash
sudo systemctl status nginx
```

Start:

```bash
sudo systemctl start nginx
```

Stop:

```bash
sudo systemctl stop nginx
```

Restart:

```bash
sudo systemctl restart nginx
```

Enable at boot:

```bash
sudo systemctl enable nginx
```

Disable:

```bash
sudo systemctl disable nginx
```

Check whether active:

```bash
systemctl is-active nginx
```

---

# 41. 📜 `journalctl`

View service logs:

```bash
sudo journalctl -u nginx
```

Last 50 lines:

```bash
sudo journalctl -u nginx -n 50
```

Follow logs:

```bash
sudo journalctl -u nginx -f
```

---

# 42. 🌐 Linux Networking

Show IP addresses:

```bash
ip addr
```

Short form:

```bash
ip a
```

IPv4:

```bash
ip -4 addr
```

Simple IP:

```bash
hostname -I
```

---

# 43. Network Interfaces

```bash
ip link
```

Common interfaces:

```text
lo
eth0
ens5
```

`lo` is the loopback interface.

Typical localhost address:

```text
127.0.0.1
```

---

# 44. 🔌 Ports

Common ports:

| Port | Service                   |
| ---: | ------------------------- |
|   22 | SSH                       |
|   80 | HTTP                      |
|  443 | HTTPS                     |
| 3306 | MySQL                     |
| 5432 | PostgreSQL                |
| 5000 | Flask/common application  |
| 8080 | Common web/application    |
| 3000 | Common development server |
| 9090 | Prometheus                |
| 9100 | Node Exporter             |

> A port number alone does not guarantee which application is actually using it.

---

# 45. `ss`

Show listening TCP ports:

```bash
ss -lnt
```

Show processes:

```bash
sudo ss -lntp
```

TCP + UDP:

```bash
sudo ss -lntup
```

This is one of the most useful Linux networking commands for DevOps troubleshooting.

---

# 46. `ping`

Test network reachability:

```bash
ping 8.8.8.8
```

Test localhost:

```bash
ping 127.0.0.1
```

Test DNS + connectivity:

```bash
ping google.com
```

> Ping can fail even when a service is reachable because ICMP may be blocked.

---

# 47. `curl`

Request a webpage/API:

```bash
curl https://example.com
```

Show HTTP headers:

```bash
curl -I https://example.com
```

Check local application:

```bash
curl http://localhost:5000
```

---

# 48. HTTP Status Codes

Important for DevOps:

```text
200 → Success
301 → Permanent redirect
302 → Temporary redirect
400 → Bad request
401 → Unauthorized
403 → Forbidden
404 → Not found
500 → Internal server error
502 → Bad gateway
503 → Service unavailable
```

---

# 49. `wget`

Download a file:

```bash
wget https://example.com/file.zip
```

---

# 50. 🌍 DNS

DNS converts domain names into IP addresses.

Example:

```text
google.com
     ↓
IP address
```

---

# 51. `nslookup`

```bash
nslookup google.com
```

---

# 52. `dig`

Detailed DNS query:

```bash
dig google.com
```

Only IP:

```bash
dig +short google.com
```

---

# 53. `getent hosts`

```bash
getent hosts google.com
```

---

# 54. 🛣️ Routing

Show routing table:

```bash
ip route
```

Default route:

```text
default via ...
```

---

# 55. `traceroute`

Show network path:

```bash
traceroute google.com
```

If not installed:

```bash
sudo apt install traceroute -y
```

---

# 56. 🔐 SSH

SSH means **Secure Shell**.

Connect:

```bash
ssh username@server-ip
```

AWS EC2 example:

```bash
ssh -i my-key.pem ubuntu@PUBLIC_IP
```

Protect private key:

```bash
chmod 400 my-key.pem
```

Verbose troubleshooting:

```bash
ssh -v ubuntu@PUBLIC_IP
```

More detailed:

```bash
ssh -vvv ubuntu@PUBLIC_IP
```

---

# 57. SSH Config

File:

```bash
~/.ssh/config
```

Example:

```text
Host my-ec2
    HostName 54.x.x.x
    User ubuntu
    IdentityFile ~/.ssh/devops-key.pem
```

Then simply:

```bash
ssh my-ec2
```

---

# 58. SSH Known Hosts

SSH stores previously trusted host information in:

```bash
~/.ssh/known_hosts
```

---

# 59. 📤 SCP

Copy local file to server:

```bash
scp -i devops-key.pem app.py ubuntu@PUBLIC_IP:/home/ubuntu/
```

Copy directory:

```bash
scp -r -i devops-key.pem project/ ubuntu@PUBLIC_IP:/home/ubuntu/
```

Download from server:

```bash
scp -i devops-key.pem ubuntu@PUBLIC_IP:/home/ubuntu/app.log .
```

---

# 60. 🔄 Rsync

Rsync synchronizes files efficiently.

Local:

```bash
rsync -av source/ backup/
```

Remote:

```bash
rsync -avz -e "ssh -i devops-key.pem" \
project/ ubuntu@PUBLIC_IP:/home/ubuntu/project/
```

Dry run:

```bash
rsync -av --dry-run source/ backup/
```

Important:

```text
source/
```

means synchronize the **contents** of source.

---

# 61. 🔥 Shell Scripting

Shell scripting allows us to automate Linux commands.

Basic script:

```bash
#!/bin/bash

echo "Hello DevOps"
```

Execute:

```bash
bash script.sh
```

or:

```bash
chmod +x script.sh
./script.sh
```

---

# 62. Variables

```bash
NAME="Tamilselvan"

echo "$NAME"
```

---

# 63. Command Substitution

```bash
HOST=$(hostname)
DATE=$(date)

echo "Server: $HOST"
echo "Date: $DATE"
```

---

# 64. User Input

```bash
read -p "Enter your name: " NAME

echo "Hello $NAME"
```

---

# 65. Script Arguments

Run:

```bash
./script.sh Tamilselvan AWS
```

Inside:

```bash
$0
$1
$2
$#
$@
```

Meaning:

```text
$0 → script name
$1 → first argument
$2 → second argument
$# → number of arguments
$@ → all arguments
```

---

# 66. Conditions

```bash
if [ "$VALUE" -eq 10 ]
then
    echo "Equal"
else
    echo "Not equal"
fi
```

Numeric operators:

```text
-eq → equal
-ne → not equal
-gt → greater than
-lt → less than
-ge → greater/equal
-le → less/equal
```

---

# 67. File Conditions

```bash
-f file
```

Regular file.

```bash
-d directory
```

Directory.

```bash
-r file
```

Readable.

```bash
-w file
```

Writable.

```bash
-x file
```

Executable.

---

# 68. `for` Loop

```bash
for SERVER in web01 web02 web03
do
    echo "Checking $SERVER"
done
```

---

# 69. `while` Loop

```bash
COUNT=1

while [ $COUNT -le 5 ]
do
    echo "Count: $COUNT"
    COUNT=$((COUNT + 1))
done
```

---

# 70. Functions

```bash
show_info() {
    echo "Hostname: $(hostname)"
    echo "Uptime: $(uptime)"
}

show_info
```

---

# 71. Exit Codes

Check previous command:

```bash
echo $?
```

Normally:

```text
0 → success
non-zero → failure
```

Example:

```bash
ls /tmp
echo $?
```

---

# 72. Redirection

Overwrite:

```bash
echo "Hello" > output.txt
```

Append:

```bash
echo "World" >> output.txt
```

Error output:

```bash
command 2> error.log
```

Both output and error:

```bash
command > output.log 2>&1
```

---

# 73. `tee`

Display and save:

```bash
echo "Hello" | tee output.txt
```

Append:

```bash
echo "Second line" | tee -a output.txt
```

---

# 74. 🩺 Practical Project — Server Health Check

A real Linux/DevOps automation script can collect:

* Hostname
* Current user
* Date
* Uptime
* Disk usage
* Memory usage
* CPU/load
* Running processes
* Listening ports
* Service status
* Health report

Example:

```bash
#!/bin/bash

REPORT="server-health-report.txt"

echo "====================================" | tee "$REPORT"
echo "       SERVER HEALTH CHECK" | tee -a "$REPORT"
echo "====================================" | tee -a "$REPORT"

echo "" | tee -a "$REPORT"

echo "Hostname:" | tee -a "$REPORT"
hostname | tee -a "$REPORT"

echo "" | tee -a "$REPORT"

echo "Current User:" | tee -a "$REPORT"
whoami | tee -a "$REPORT"

echo "" | tee -a "$REPORT"

echo "Uptime:" | tee -a "$REPORT"
uptime | tee -a "$REPORT"

echo "" | tee -a "$REPORT"

echo "Disk Usage:" | tee -a "$REPORT"
df -h / | tee -a "$REPORT"

echo "" | tee -a "$REPORT"

echo "Memory Usage:" | tee -a "$REPORT"
free -h | tee -a "$REPORT"

echo "" | tee -a "$REPORT"

echo "Listening Ports:" | tee -a "$REPORT"
ss -lnt | tee -a "$REPORT"

echo "" | tee -a "$REPORT"

echo "Health check completed." | tee -a "$REPORT"
```

Run:

```bash
chmod +x server-health-check.sh
./server-health-check.sh
```

View report:

```bash
cat server-health-report.txt
```

---

# 75. 🔍 Practical Log Analysis

Create:

```bash
logs/application.log
```

Example:

```text
INFO Application started
INFO Database connected
ERROR Database connection failed
INFO User login successful
WARNING High memory usage
ERROR API request failed
INFO Application restarted
```

Count errors:

```bash
grep -i "error" logs/application.log | wc -l
```

Find errors:

```bash
grep -i "error" logs/application.log
```

Find warnings:

```bash
grep -i "warning" logs/application.log
```

Count error types:

```bash
grep -i "error" logs/application.log | sort | uniq -c
```

Monitor new errors:

```bash
tail -f logs/application.log | grep --line-buffered -i "error"
```

---

# 76. 🧪 Practical Exercises

## Exercise 1 — File Management

Create:

```text
project/
├── app/
├── config/
├── logs/
└── backup/
```

Commands required:

```bash
mkdir
mkdir -p
touch
cp
mv
rm
tree
```

---

## Exercise 2 — Permissions

Create:

```bash
touch secret.txt
```

Set:

```text
Owner → read/write
Group → read
Others → no access
```

Expected permission:

```text
600
```

Actually, note the distinction:

* `600` = owner read/write, group none, others none.
* If you want **owner read/write + group read + others no access**, use `640`.

Practice both:

```bash
chmod 600 secret.txt
chmod 640 secret.txt
```

Check:

```bash
ls -l secret.txt
```

---

## Exercise 3 — Process Monitoring

Find:

```bash
nginx
```

if installed:

```bash
ps aux | grep nginx
pgrep nginx
```

Check service:

```bash
systemctl status nginx
```

Check logs:

```bash
sudo journalctl -u nginx -n 50
```

---

## Exercise 4 — Network Troubleshooting

Run:

```bash
hostname -I
ip addr
ip route
ss -lntp
ping 8.8.8.8
dig google.com +short
curl -I https://example.com
```

Explain what every command tells you.

---

## Exercise 5 — SSH

Connect to an EC2 server:

```bash
ssh -i key.pem ubuntu@PUBLIC_IP
```

Then check:

```bash
whoami
hostname
ip addr
df -h
free -h
```

---

## Exercise 6 — File Transfer

Upload:

```bash
scp -i key.pem app.py ubuntu@PUBLIC_IP:/home/ubuntu/
```

Then try Rsync:

```bash
rsync -avz -e "ssh -i key.pem" \
project/ ubuntu@PUBLIC_IP:/home/ubuntu/project/
```

---

## Exercise 7 — Shell Script

Create:

```bash
service-check.sh
```

Run:

```bash
./service-check.sh nginx
```

The script should determine whether the service is running.

---

# 77. 🛠️ Linux Troubleshooting Workflow

When an application is not working, don't randomly execute commands.

Use this sequence:

```text
1. Is the process running?
        ↓
2. Is the service running?
        ↓
3. Is the port listening?
        ↓
4. Can I connect locally?
        ↓
5. Can I connect remotely?
        ↓
6. Is DNS resolving?
        ↓
7. Is routing correct?
        ↓
8. Is firewall/security blocking it?
        ↓
9. Check application/service logs
```

Useful commands:

```bash
ps aux
systemctl status
ss -lntp
curl
ping
dig
ip route
journalctl
```

This troubleshooting workflow is extremely useful in AWS and DevOps environments.

---

# 78. 🔐 Security Best Practices

Never commit these to GitHub:

```text
*.pem
*.key
.env
AWS access keys
AWS secret keys
passwords
database credentials
private SSH keys
```

Example `.gitignore`:

```gitignore
*.pem
*.key
.env
id_rsa
id_rsa.pub
*.log
```

Never run dangerous commands blindly:

```bash
rm -rf
chmod 777
```

Always verify the target first.

---

# 79. 🎯 Linux Commands Cheat Sheet

| Category        | Commands                        |
| --------------- | ------------------------------- |
| User            | `whoami`, `id`, `groups`        |
| Directory       | `pwd`, `cd`, `mkdir`, `rmdir`   |
| Files           | `touch`, `cp`, `mv`, `rm`       |
| Listing         | `ls`, `tree`                    |
| Viewing         | `cat`, `less`, `more`           |
| Lines           | `head`, `tail`                  |
| Search          | `grep`, `find`                  |
| Text            | `sort`, `uniq`, `wc`            |
| Pipes           | `\|`                            |
| Users           | `adduser`, `su`                 |
| Groups          | `groupadd`, `usermod`           |
| Permissions     | `chmod`, `chown`, `chgrp`       |
| Privileges      | `sudo`                          |
| Processes       | `ps`, `pgrep`, `top`, `htop`    |
| Process control | `kill`, `pkill`                 |
| Jobs            | `jobs`, `bg`, `fg`, `nohup`     |
| Services        | `systemctl`                     |
| Logs            | `journalctl`                    |
| Network         | `ip`, `ss`                      |
| Connectivity    | `ping`, `curl`, `wget`          |
| DNS             | `nslookup`, `dig`, `getent`     |
| Routing         | `ip route`, `traceroute`        |
| Remote access   | `ssh`                           |
| File transfer   | `scp`, `rsync`                  |
| Scripting       | `bash`, `chmod +x`              |
| Automation      | `if`, `for`, `while`, functions |

---

# 🎓 What a Fresher Should Be Able to Do

After completing this repository, a beginner should be able to:

* Navigate a Linux server
* Create and manage files/directories
* Search application logs
* Understand Linux permissions
* Create users and groups
* Monitor processes
* Manage Linux services
* Read service logs
* Check IP addresses and ports
* Troubleshoot basic connectivity
* Connect to an EC2 Linux server using SSH
* Transfer files using SCP/Rsync
* Write basic Bash scripts
* Use conditions and loops
* Check service health
* Monitor disk usage
* Analyze application logs
* Create basic server automation scripts

---

# 🚀 DevOps Connection

Linux is the foundation for many DevOps technologies.

```text
                    LINUX
                      │
          ┌───────────┼───────────┐
          │           │           │
        AWS         Docker      Jenkins
          │           │           │
         EC2      Containers     CI/CD
          │           │           │
          └───────────┼───────────┘
                      │
                  Kubernetes
                      │
                    EKS
```

The Linux commands learned here will be used later while working with:

* AWS EC2
* Docker
* Jenkins
* Kubernetes
* EKS
* Terraform
* CI/CD pipelines
* Monitoring
* Cloud servers

---

# 📚 Learning Roadmap

```text
✅ Linux Fundamentals
✅ File Management
✅ File Viewing & Searching
✅ Pipes & Redirection
✅ Users & Groups
✅ Permissions
✅ Processes
✅ Services & Logs
✅ Linux Networking
✅ SSH
✅ SCP
✅ Rsync
✅ Shell Scripting
✅ Linux Automation
⬜ Package Management
⬜ Environment Variables
⬜ Cron & Scheduling
⬜ Advanced Bash Scripting
⬜ Linux DevOps Project
⬜ Git & GitHub
⬜ AWS
⬜ Docker
⬜ Jenkins
⬜ Kubernetes
⬜ Terraform
⬜ Monitoring
```

---

# 🏆 Final Practical Project

## Linux Server Health Monitoring & Automation

Build a Bash-based Linux automation project that:

1. Checks hostname
2. Checks current user
3. Checks uptime
4. Checks CPU/load
5. Checks memory
6. Checks disk usage
7. Checks listening ports
8. Checks important services
9. Checks application logs
10. Generates a health report
11. Returns proper exit codes
12. Can later be scheduled automatically

Example:

```text
Linux Server
     │
     ▼
Bash Health Check
     │
     ├── CPU
     ├── Memory
     ├── Disk
     ├── Processes
     ├── Ports
     ├── Services
     └── Logs
             │
             ▼
      Health Report
```

---

# 👨‍💻 Author

**Tamilselvan S**

AWS | DevOps | Linux | Cloud Computing

This repository is part of my continuous AWS and DevOps learning journey, where each technology is studied through **concepts + commands + practical implementation + troubleshooting**.

---

# ⭐ Learning Philosophy

> **Don't just memorize Linux commands. Understand what problem each command solves and practice it on a real Linux server.**

---

## 📌 Next Learning Topics

After completing the Linux fundamentals and shell scripting exercises, the next Linux revision topics are:

1. **APT / Package Management**
2. **Environment Variables**
3. **Cron Jobs & Scheduling**
4. **Advanced Bash Scripting**
5. **Linux Storage & Disk Management**
6. **Archives & Compression**
7. **Linux Security Basics**
8. **Complete Linux DevOps Automation Project**

Then we will move to:

```text
Linux
  ↓
Networking
  ↓
Git & GitHub
  ↓
AWS Services
  ↓
Docker
  ↓
Jenkins
  ↓
Terraform
  ↓
Kubernetes
  ↓
Monitoring
  ↓
Complete CI/CD Project
```

---

## 🤝 Contributing / Practice

This repository is primarily a personal learning and practical revision repository.

Beginners can use the commands and exercises as a starting point for practicing Linux and DevOps fundamentals.

---

## 📖 Reference

GitHub Markdown supports headings, lists, code blocks, tables, links, and other formatting used throughout this README.
