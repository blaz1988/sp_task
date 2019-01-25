# sp_task

Sp_task is parser written in pure Ruby. It recognizes web server logs with pages and ip address. You can use parser to generate and print report with page loads and unique visits.

# Usage
* Clone the repo
* Navigate to the directroy where "parser.rb" is located
* Run script by passing log file path 

      ruby parser.rb webserver.log
    
# Tests
* Navigate to the directroy where "spec" folder is located
* Run all tests
    
      rspec spec
    
* Run specific test

      rspec spec/log_parser_spec.rb
      rspec spec/statistic_presenter_spec.rb
      rspec spec/web_statistic_spec.rb
    
# Dependencies
None, other than Ruby and gem rspec. I've used it with Ruby 2.5.3 and rspec 3.7.0.

# Contributing
* Fork it
* Create your feature branch (git checkout -b my-new-feature)
* Commit your changes (git commit -am 'Add some feature')
* Push to the branch (git push origin my-new-feature)
* Create new Pull Request
