# README
Installation instructions (assuming machine has ruby 2.6.3 and bundler)
-----------------------------------------------------------------------
- in the root folder, bundle install
- rake db:create + rake db:migrate (requires sqlite to be installed)
- run rails test (to see unit tests)
- run rails s (the link for the job listings is localhost:3000/jobs/index)

Added gem:
-----------
- minitest-reporters (to get colour and easier to read output when running unit tests)

Design decisions:
-----------------
I hard coded the roles, primary businesses and technical background in jobs_provider.rb to keep it simple.
A different approach would be to have different models for roles and primary businesses, but there is no requirement
to add new records so I did not do this.

jobs_provider.rb is responsible for creating the combinations as specified in part 2 of the assignment.

I made the json look like the one in the document, an example below (technicalBackground will not appear if it is null):
{
        "RoleName": "Fullstack Engineer",
        "PrimaryBusiness": "Software development",
        "TechnicalBackground": "Yes"
    }

Expected Output
---------------
going to localhost:3000/jobs/index will return the below

[
    {
        "RoleName": "Customer Success",
        "PrimaryBusiness": "Accounting"
    },
    {
        "RoleName": "Customer Success",
        "PrimaryBusiness": "Software development"
    },
    {
        "RoleName": "Customer Success",
        "PrimaryBusiness": "Landscaping"
    },
    {
        "RoleName": "Fullstack Engineer",
        "PrimaryBusiness": "Accounting",
        "TechnicalBackground": "Yes"
    },
    {
        "RoleName": "Fullstack Engineer",
        "PrimaryBusiness": "Accounting",
        "TechnicalBackground": "No"
    },
    {
        "RoleName": "Fullstack Engineer",
        "PrimaryBusiness": "Software development",
        "TechnicalBackground": "Yes"
    },
    {
        "RoleName": "Fullstack Engineer",
        "PrimaryBusiness": "Software development",
        "TechnicalBackground": "No"
    },
    {
        "RoleName": "Fullstack Engineer",
        "PrimaryBusiness": "Landscaping",
        "TechnicalBackground": "Yes"
    },
    {
        "RoleName": "Fullstack Engineer",
        "PrimaryBusiness": "Landscaping",
        "TechnicalBackground": "No"
    },
    {
        "RoleName": "Product Manager",
        "PrimaryBusiness": "Accounting"
    },
    {
        "RoleName": "Product Manager",
        "PrimaryBusiness": "Software development",
        "TechnicalBackground": "Yes"
    },
    {
        "RoleName": "Product Manager",
        "PrimaryBusiness": "Software development",
        "TechnicalBackground": "No"
    },
    {
        "RoleName": "Product Manager",
        "PrimaryBusiness": "Landscaping"
    }
]
