# frozen_string_literal: true

RSpec.describe DemoController, type: :controller do
  describe "GET #index" do
    context 'when the utility class is not stubbed' do
      it 'executes the original method' do
        get '/demo'
        expect(JSON.parse(response.body)).to eq %w[Return value of original method]
      end
    end

    context 'when the utility class is partially stubbed to raise an error' do
      before do
        allow(DemoUtility).to receive(:printable_strings).and_raise 'Whoopsy daisy!'
      end

      it 'rescues the error and returns a 500 status' do
        expect { get '/demo' }.to raise_error 'Whoopsy daisy!'
      end
    end
  end
end
