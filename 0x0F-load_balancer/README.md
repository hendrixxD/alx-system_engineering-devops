In this first task i configured web-02 to be identical to web-01. Fortunately, i built a Bash script during my web server project, and they’ll now come in handy to easily configure web-02. Remember, remember automation is key.

Since we’re placing our web servers behind a load balancer for this project, we want to add a custom Nginx response header. The goal here is to be able to track which web server is answering our HTTP requests, to understand and track the way a load balancer works. More in the coming tasks.

Requirements:

    I configured Nginx so that its HTTP response contains a custom header (on web-01 and web-02)
        The name of the custom HTTP header was X-Served-By
        The value of the custom HTTP header was the hostname of the server Nginx is running on
    the file #0-custom_http_response_header configures a brand new Ubuntu machine to the requirements asked in this task 
