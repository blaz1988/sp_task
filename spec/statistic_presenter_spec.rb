require_relative '../lib/statistic_presenter'

describe 'StatisticPresenter' do
  let(:report) { [['/dummy_page1', 5]] }
  let(:statistic_presenter) { StatisticPresenter.new(report, word) }

  describe '#print_report ' do
    let(:word) { 'dummy_word' }
    let(:output) { '/dummy_page1 5 dummy_word' }

    it do
      expect(STDOUT).to receive(:puts).with(output)
      statistic_presenter.print_report
    end
  end
end
