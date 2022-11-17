# Requirements
## General
All your files will be interpreted on Ubuntu 14.04 LTS
All your files should end with a new line
A README.md file at the root of the folder of the project is mandatory
All your Bash script files must be executable
Your Bash scripts must pass Shellcheck without any error
Your Bash scripts must run without error
The first line of all your Bash scripts should be exactly #!/usr/bin/env bash
The second line of all your Bash scripts should be a comment explaining what is the script doing
### Task-0
```0. Run software as another user```
The user root is, on Linux, the “superuser”. It can do anything it wants, that’s a good and bad thing. A good practice is that one should never be logged in the root user, as if you fat finger a command and for example run rm -rf /, there is no comeback. That’s why it is preferable to run as a privileged user, meaning that the user also has the ability to perform tasks that the root user can do, just need to use a specific command that you need to discover.

For the containers that you are given in this project as well as the checker, everything is run under the root user, which has the ability to run anything as another user.
#### Requirements
 - write a Bash script that accepts one argument
 - the script should run the whoami command under the user passed as an argument
 - make sure to try your script by passing different users
