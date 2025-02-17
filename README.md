# Active Collab legacy support with docker

1.  `git clone https://github.com/niiknow/activecollab`
2.  `chown -R 1000:1000 data/`
3.  Place files in `data/app` and database restoration sql file in `data/initdb`
4.  Copy `.env-example` to `.env` and update `.env` file with valid config
5.  Start interactively with `docker-compose up`

- Reviews and fix any issue/errors
- Adjust/fix any issue with database login credentials and environment in `data/app`

finally, `docker-compose up -d`

# Additionally
Comment out phpmyadmin when not in use.
