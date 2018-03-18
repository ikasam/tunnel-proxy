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

# 3. Start container

    $ docker-compose up -d

# 4. Browser setting

(WIP)
