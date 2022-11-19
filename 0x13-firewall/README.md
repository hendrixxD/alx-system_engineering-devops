# 0x13. Firewall

##Warning!

Containers on demand cannot be used for this project (Docker container limitation)

Be very careful with firewall rules! For instance, if you ever deny port ```22/TCP``` and log out of your server, you will not be able to reconnect to your server via SSH, and we will not be able to recover it. When you install UFW, port 22 is blocked by default, so you should unblock it immediately before logging out of your server.

### 0. Block all incoming traffic but 
In this task, on my web-01, i denied all incomming traffic for the exceptions of ssh, http and https and allowed all outgoing trafic

### 1. Port forwarding 
Firewalls can not only filter requests, they can also forward them.

I Configured ```web-01``` so that its firewall redirects port ```8080/TCP``` to ```port 80/TCP```.
