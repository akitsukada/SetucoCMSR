#!/bin/sh
bundle install
rails g rspec:install
spork --bootstrap
echo '--drb' >> .rspec
guard init spork
guard init rspec
guard init cucumber
echo 'edit spec/spec_helper.rb, and run "guard start"'
