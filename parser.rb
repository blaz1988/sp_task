require_relative 'lib/web_statistic'
require_relative 'lib/log_parser'
require_relative 'lib/statistic_presenter'

abort('ABORTED! You forgot to pass log path argument') if ARGV.length < 1
abort("ABORTED! Log file #{ARGV[0]} is empty!") unless File.size?(ARGV[0])
log_parser = LogParser.new(ARGV[0])
log_parser.parse_log
web_stat = WebStatistic.new(log_parser.hash_content)
web_stat.generate_page_views
web_stat.generate_unique_views
puts 'Page views report:'
page_views = StatisticPresenter.new(web_stat.page_views, 'visits')
page_views.print_report
puts 'Unique views report:'
unique_views = StatisticPresenter.new(web_stat.unique_views, 'unique views')
unique_views.print_report
