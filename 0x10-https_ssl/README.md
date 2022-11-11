# 0x10-https_ssl

## 0-world_wide_web

In this task i added 
- a sub domain ```www``` to my domain ```globalhendrixx.texh```
and it point to load balancer IP ```lb-01:xxx.xx.xx.xxx```

- a sub domain ```lb-01``` to my domain ```globalhendrixx.texh```
and it point to load balancer IP ```lb-01:xxx.xx.xx.xxx```

- a sub domain ```web-01``` to my domain ```globalhendrixx.texh```
and it point to web-01 IP ```web-01:x.xxx.xx.xxx```

- a sub domain ```web-02``` to my domain ```globalhendrixx.texh```
and it point to load balancer IP ```web-02:xxx.xx.xx.xxx```

I wrote a bash script that accepts 2 args:
 - ```domain```:
     - type: string
     - what: domain name tto audit
     - mandatory: yes
 - ```subdomain```:
     
     - type: string
     - what: specific subdomain to audit
     - mandatory: no

Output: The subdomain [SUB_DOMAIN] is a [RECORD_TYPE] record and points to [DESTINATION]

And When only the parameter ```domain``` is provided, subdomains www, lb-01, web-01 and web-02 information is dispayed - in this specific order
When passing ```domain``` and ```subdomain``` parameters, specified subdomain information is displayed

I used: awk and at least one Bash function was used

## 1. HAproxy SSL termination 

“Terminating SSL on HAproxy” means that HAproxy is configured to handle encrypted traffic, unencrypt it and pass it on to its destination.

Create a certificate using ```certbot``` and configure ```HAproxy``` to accept encrypted traffic for your subdomain ```www```..

Requirements:

   - HAproxy must be listening on port TCP 443
   - HAproxy must be accepting SSL traffic
   - HAproxy must serve encrypted traffic that will return the / of your web server
   - When querying the root of your domain name, the page returned must contain Holberton School
   - Share your HAproxy config as an answer file (/etc/haproxy/haproxy.cfg)

The file 1-haproxy_ssl_termination must be your HAproxy configuration file

HAproxy 1.5 or higher is installed, ```SSL termination``` is not available before v1.5.

## 100-redirect_http_to_https

A good habit is to enforce HTTPS traffic so that no unencrypted traffic is possible. Configure HAproxy to automatically redirect HTTP traffic to HTTPS.

Requirements:

  -  This should be transparent to the user
  -  HAproxy should return a ```301```
  -  HAproxy should redirect HTTP traffic to HTTPS
  -  Share your HAproxy config as an answer file (```/etc/haproxy/haproxy.cfg```)

The file ```100-redirect_http_to_https``` contains HAproxy configuration
