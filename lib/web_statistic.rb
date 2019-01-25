class WebStatistic
  attr_reader :page_views, :unique_views

  # Contains class definition for WebStatistic class used to
  # present visitor statistics
  # Methods:
  # - generate_page_views: method used to generate ordered page views
  #
  # - generate_unique_views: method used to generate ordered unique views
  #

  def initialize(hash_content)
    @hash_content = hash_content
    @page_views = {}
    @unique_views = {}
  end

  def generate_page_views
    @hash_content.each { |page, ips| @page_views[page] = ips.length }
    @page_views = sort_report(@page_views)
  end

  def generate_unique_views
    @hash_content.each { |page, ips| @unique_views[page] = ips.uniq.length }
    @unique_views = sort_report(@unique_views)
  end

  private

  def sort_report(report)
    report.sort_by { |_key, value| value }.reverse
  end
end
