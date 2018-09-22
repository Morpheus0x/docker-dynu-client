# docker-dynu-client

Original Source: https://github.com/wcen/docker-dynu-client


## Create Account:

Create Account: https://www.dynu.com/ to create your account

Add new Dynamic DNS Domain: https://www.dynu.com/ControlPanel/DDNS


## Run Docker:

```sh
docker run -d --restart=always --name dynu-client \
  -e MY_HOSTNAME=$ddns_domain \
  -e MY_USER=$user \
  -e MY_PASS=$secret \
  morpheus0x/docker-dynu-client:latest
```


## Environment Variables:

>MY_HOSTNAME: dynu domain (e.g. myname.dynu.net)

>MY_USER: login name (e-mail or username)

>MY_PASS: login password (will be sent encrypted via https to api.dynu.com)

>WAIT_TIME: 300 (time between sending updates in seconds)
