# Test exercise for analytical and testing skills

### The base requirements in the "/requirements/initial requirements/"

Description of project files:
  - ##### requirements ( here is specifications artifacts )
     * initial requirements ( first version of spec from PO )
     * my questions about initial requirements ( Here is my questions about this features )
  - ##### testing ( testing artifacts )
     * automation project ( it is an example of structure )
     * check lists ( short description of test cases )
     * test cases ( full description of tests )
     
     #### Automation project 
         
     ##### The main tools on the project: 
     * [cucumber](https://cucumber.io/docs/installation/ruby/) - to describe the steps of test scenarios in human language
     * [selenium-webdriver](https://www.selenium.dev/documentation/en/webdriver/), [site-prism](https://github.com/site-prism/site_prism), [capybara](https://github.com/teamcapybara/capybara), [RSpec](https://github.com/rspec/rspec) - to testing UI
     ***
     ##### Project structure
     * **features** - main directory for tests
         * **pages** - contains folders with descriptions of web-forms, for each form there are two files: 
         form_name_**page.rb** - contains a class with form elements and methods for working with these elements
         form_name_**steps.rb** - contains steps to perform actions on the form
         * **support** - contains two files (env.rb and hooks.rb) with settings for running autotests
         * **test_cases** - contains cucumber test cases in .feature files
     * **reports** - storing reports
     * **cucumber.yml** - profiles settings
     * **Gemfile** и **Gemfile.lock** - contains the require libraries
     
     ***
     ##### Commands for runs
     * **Standard run** - bundle exec cucumber -t "@tag_name"
     * **Standard run in headless mode** - bundle exec cucumber BROWSER=headless -t "@tag_name"
     * **Standard run + html отчёт** - bundle exec cucumber -t "@tag_name" -p html_report
     * **Standard run + rerun** - bundle exec cucumber -t "@tag_name" --retry 3
     * **Parallel run** - bundle exec parallel_cucumber features/test_cases/ -n 3 -o "-t @tag_name"
     ***
     

