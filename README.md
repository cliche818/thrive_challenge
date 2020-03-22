# README
Installation instructions (assuming machine has ruby 2.6.3 and bundler)
- in the root folder, bundle install
- rake db:create + rake db:migrate (requires sqlite to be installed)
- run rails test (to see unit tests)
- run rails s (the link for the job listings is localhost:3000/jobs/index)


Added gem:
- minitest-reporters (to get colour and easier to read output when running unit tests)
