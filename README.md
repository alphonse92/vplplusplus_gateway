# Vpl ++ Gateway

This software acts as entrypoint of the VPL ++ microservices ecosystem. This microservice if for docker clusters.

# Running

`docker-compose up gateway`

# Configuration

The way to configure the gateway is by environment variables.

**Variables**

1. SERVER_PORT: server's port if this value is 443, runs with ssl
2. CERT: path to certificate
3. CERT_KEY: path to key
4. SERVER_NAME: server's name
5. JAIL_URL: internal url to the jail microservice
6. JAIL_PATH: external path to reach the jail microservice for example www.myDomain.com/jail
7. CLIENT_URL: internal url to the client  microservice
8. CLIENT_PATH: external path to reach the client microservice for example www.myDomain.com/client
9. CLIENT_STATIC_PATH: external path to serve the static files of the client for example www.myDomain.com/vplclient_static
10. API_URL: internal url to the api microservice
11. API_PATH: external path to reach the api microservice for example www.myDomain.com/api
12. MOODLE_URL: internal url to the jail microservice 
13. MOODLE_PATH: external path to reach the jail microservice for example www.myDomain.com/moodle

**Example**

```yaml
SERVER_PORT: 80
CERT: /etc/cert
CERT_KEY: /etc/key
SERVER_NAME: localhost
JAIL_URL: http://jailrunner
JAIL_PATH: /jail
CLIENT_URL: http://client
CLIENT_PATH: /client
CLIENT_STATIC_PATH: /vplclient_static
API_URL: http://api:1337
API_PATH: /apis
MOODLE_URL: http://moodle
MOODLE_PATH: /
```
