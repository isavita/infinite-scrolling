# infinite-scrolling
Infinite scrolling with kaminari

## Get Started

### Start elasticsearch (the version in the repository is *2.2.1*):
> ./elasticsearch/bin/elasticsearch -d

### Start bundle, rails server and seed:
> bundle install
> rails server
> rake db:seed

### Add data to search index:
> rake searchkick:reindex:all
