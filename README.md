# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## Dev


```BASH

bundle install
bundle exec rake db:create
bundle exec rake db:migrate


#	Development
mysql -u root hkle_development -e 'TRUNCATE variants'

mysql -u root --local-infile hkle_development -e "
  LOAD DATA LOCAL INFILE 'variants.csv'
  INTO TABLE variants FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n'
  (project,hkle,quality,modification,chromosome,position,direction,prepost,value,subject)"



#	Or Production
mysql -u root -p hkle_production -e 'TRUNCATE variants'

mysql -u root -p --local-infile hkle_production -e "
  LOAD DATA LOCAL INFILE 'variants.csv'
  INTO TABLE variants FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n'
  (project,hkle,quality,modification,chromosome,position,direction,prepost,value,subject)"

````
