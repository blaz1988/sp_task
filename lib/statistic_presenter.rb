class StatisticPresenter
  # Contains class definition for StatisticPresenter class used to present
  # visitor report data
  # Methods:
  # - print_report: method used to print report in pretty format
  #                 e.g. /about/2 90 visits

  def initialize(report, word)
    @report = report
    @word = word
  end

  def print_report
    @report.each { |page, loads| puts "#{page} #{loads} #{@word}" }
  end
end
