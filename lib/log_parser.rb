class LogParser
  attr_reader :hash_content
  # Contains class definition for LogParser class used to parse data from
  # specific log file
  # Methods:
  # - parse_log: method used to read content from specific path and to
  #              create hash with key page that points to the list of ips

  def initialize(log_path)
    @log_path = log_path
    @hash_content = {}
  end

  def parse_log
    File.open(@log_path,'r').each do |line|
      next unless valid_line?(line)
      page = parse(line)[0].strip
      ip = parse(line)[1].strip
      @hash_content[page] = save_ip(page, ip)
    end
  end

  private

  def parse(line)
    line.split(' ')
  end

  def save_ip(page, ip)
    @hash_content.key?(page) ? hash_content[page] + [ip] : [ip] 
  end

  def valid_line?(line)
    return false if parse(line).length < 2
    is_ip?(parse(line)[1])
  end

  def is_ip?(ip)
    true if ip =~ /\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/
  end
end
