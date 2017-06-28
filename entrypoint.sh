#!/usr/bin/env bash


if [[ -f /var/firstrun ]]; then
  echo "in firstrun"
  bundle install
  bundle exec rake db:migrate
  #bundle exec rake spotlight:initialize
  /bin/rm /var/firstrun
fi
if [[ -f /var/firstrun ]];then
  echo "firstrun exists "
fi
echo "in entrypoint"
# Start up puma
bundle exec rails s -p 3001 -b "0.0.0.0"
