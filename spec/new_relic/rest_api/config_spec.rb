RSpec.describe NewRelic::RestApi::Config do
  describe '#host' do
    let(:host) { subject.host }

    context 'when is not set' do
      it 'returns new relic default' do
        expect(host).to eq('https://api.newrelic.com')
      end
    end

    context 'when overwritten' do
      before { subject.host = 'http://another.host' }

      it 'returns overwritten host' do
        expect(host).to eq('http://another.host')
      end
    end
  end

  describe '#api_version' do
    let(:api_version) { subject.api_version }

    context 'when is not set' do
      it 'returns new relic latest api version' do
        expect(api_version).to eq('v2')
      end
    end

    context 'when overwritten' do
      before { subject.api_version = 'v3' }

      it 'returns overwritten api version' do
        expect(api_version).to eq('v3')
      end
    end
  end

  describe '#retries' do
    let(:retries) { subject.retries }

    context 'when is not set' do
      it 'returns new relic default' do
        expect(retries).to be(0)
      end
    end

    context 'when overwritten' do
      before { subject.retries = 2 }

      it 'returns overwritten retries' do
        expect(retries).to be(2)
      end
    end
  end

  describe '#timeout' do
    let(:timeout) { subject.timeout }

    context 'when is not set' do
      it 'returns new relic default' do
        expect(timeout).to be(10)
      end
    end

    context 'when overwritten' do
      before { subject.timeout = 2 }

      it 'returns overwritten timeout' do
        expect(timeout).to be(2)
      end
    end
  end

  describe '#open_timeout' do
    let(:open_timeout) { subject.open_timeout }

    context 'when is not set' do
      it 'returns new relic default' do
        expect(open_timeout).to be(10)
      end
    end

    context 'when overwritten' do
      before { subject.open_timeout = 2 }

      it 'returns overwritten open_timeout' do
        expect(open_timeout).to be(2)
      end
    end
  end
end
