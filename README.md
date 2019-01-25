# sp_task

Sp_task is parser written in pure Ruby. It recognizes all web server logs with pages and ip address. You can use parser to generate report with page loads and unique visits.

# Usage
* Clone the repo
* Run script by passing log file path 

      ruby parser.rb webserver.log
    
# Tests
Run all tests
    
    rspec spec
    
Run specific test

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
