# Active Collab legacy support with docker

1.  git clone https://github.com/niiknow/activecollab
2.  chown -R 1000:1000 data/
3.  place files in data/app
4.  plase sql restoration file in data/initdb
5.  copy `.env-example` to `.env` and update config file with valid info
6.  `docker-compose up`

- Reviews and fix any errors
- Adjust/fix any issue with database login credentials and environment in data/app

finally, `docker-compose up -d`

# Additionally
Comment out phpmyadmin when not in use.
