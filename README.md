# 1. Add Step Server Key

    $ ls -l keys
    total 4
    -rw-------. 1 ikasamak ikasamak 1692 Mar 18 21:38 id_rsa

# 2. Make .env

    $ cp .env.sample .env
    $ vim .env

    STEP_SERVER=stepserver.example.com
    STEP_SERVER_USER=root
    INPUT_KEY_FILENAME=id_rsa
    LOCAL_PORT=1080

# 3. Start container

    $ docker-compose up -d

# 4. Edit proxy.pac

    $ vim proxy.pac

    function FindProxyForURL(url, host) {
      if (shExpMatch(host, "example.com")) {
        return "SOCKS5 localhost:1080; DIRECT";
      } else {
        return "DIRECT";
      }
    }

# 5. Browser setting

![proxy.pac setting](https://raw.githubusercontent.com/ikasam/tunnel-proxy/images/chrome-setting.PNG)
