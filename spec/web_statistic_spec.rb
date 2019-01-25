require_relative '../lib/web_statistic'
require_relative '../lib/log_parser'

describe 'WebStatistic' do
  let(:log_parser) { LogParser.new(path) }
  let(:web_stat) do
    log_parser.parse_log
    WebStatistic.new(log_parser.hash_content)
  end

  describe '#generate_page_views' do
    subject { web_stat.generate_page_views }
    let(:path) { 'spec/fixtures/webserver.log' }
    let(:page_views_report) { [['/dummy_page2', 3], ['/dummy_page1', 2]] }

    it { is_expected.to eq page_views_report }
  end

  describe '#generate_unique_views' do
    subject { web_stat.generate_unique_views }
    let(:path) { 'spec/fixtures/webserver.log' }
    let(:unique_views_report) { [['/dummy_page2', 2], ['/dummy_page1', 1]] }

    it { is_expected.to eq unique_views_report }
  end
end
