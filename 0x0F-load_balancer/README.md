Background Context

I have been given 2 additional servers:

    gc-[STUDENT_ID]-web-02-XXXXXXXXXX
    gc-[STUDENT_ID]-lb-01-XXXXXXXXXX

i improved our web stack so that there is redundancy for our web servers. This will allow us to be able to accept more traffic by doubling the number of web servers, and to make our infrastructure more reliable. If one web server fails, we will still have a second one to handle requests.

Requirements:

    Configure Nginx so that its HTTP response contains a custom header (on web-01 and web-02)
        The name of the custom HTTP header must be X-Served-By
        The value of the custom HTTP header must be the hostname of the server Nginx is running on

For this project, i wrote Bash scripts to help automate my work. All scripts must be designed to configure a brand new Ubuntu server to match the task requirements.
