ENV['RACK_ENV'] = 'test'

load './config.ru'
require 'rspec'
require 'rack/test'

describe 'The Hello App' do
  include Rack::Test::Methods

  def app
    App
  end

  it 'say /' do
    get '/'
    expect(last_response.status).to eq 302
  end

  it 'say hello' do
    get '/hello'
    expect(last_response.status).to eq 200
  end

  it 'say hello world' do
    get '/hello/world'
    expect(last_response.status).to eq 200
  end
end
