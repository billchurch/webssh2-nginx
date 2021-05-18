# WebSSH2 with NGINX Proxy over HTTPS with docker-compose
This is a proof-of-concept to show one way to configure NGINX to provide an HTTPS proxy for a WebSSH2 instance.

This is an extremely simple PoC, only exposes the HTTPS interface (:8443) and does a reverse proxy for the WebSSH2 (:2222).

# TLDR
1. `./gencerts.sh`
2. `docker-compose up -d --build`
3. Set `chrome://flags/#allow-insecure-localhost` to `Enabled`.
4. `https://localhost:8443/`

# Requirements
You need to generate a self-signed certificate. `./gencerts.sh` will do this for you as long as you have openssl installed. It will ask for some questions for the cert contents, for the common name `localhost` is probably good. 

Since Chrome wants you to be secure, you may need to disable the localhost self-signed ssl protections it has by seting `chrome://flags/#allow-insecure-localhost` to `Enabled`.

Once that's complete, `docker-compose up -d --build` should do it and then you can navigate to: `https://localhost:8443/` enter a host to connect to and click Launch or press enter. Finally enter the credentials when prompted and everything should be good.

You can customize both the NGINX config `./nginx/conf/nginx.conf` as well as the webssh2 config `./webssh2/config.json`. A sample webssh2 config exists as `./webssh2/config.json.sample`.
  