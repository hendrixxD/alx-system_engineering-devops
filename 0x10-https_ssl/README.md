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
