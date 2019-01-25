require_relative '../lib/log_parser'

describe 'LogParser' do
  let(:log_parser) { LogParser.new(log_path) }

  describe '#parse_log' do
    subject do
      log_parser.parse_log
      log_parser.hash_content
    end

    context 'with correct content' do
      let(:log_path) { 'spec/fixtures/webserver.log' }
      let(:hash_content) do
        {"/dummy_page1"=>["10.0.0.0", "10.0.0.0"],
         "/dummy_page2"=>["10.0.0.1", "10.0.0.2", "10.0.0.1"]}
      end

      it { is_expected.to eq hash_content }
    end

    context 'with wrong ip' do
      let(:log_path) { 'spec/fixtures/webserver_with_wrong_ip.log' }
      let(:hash_content) { {"/dummy_page1"=>["10.0.0.0", "10.0.0.0"]} }

      it { is_expected.to eq hash_content }
    end
  end
end
