ENV['RACK_ENV'] = 'test'

load './config.ru'
require 'rspec'
require 'rack/test'

describe 'The Hello App' do
  include Rack::Test::Methods

  def app
    Roda::App
  end

  it 'say hello' do
    get '/'
    expect(body).to eq('{"ping":"pong"}')
  end
end
