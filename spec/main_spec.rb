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
    expect(last_response.body).to eq('Hello!')
  end

  it 'say hello world' do
    get '/hello/world'
    expect(last_response.status).to eq 200
    expect(last_response.body).to eq('Hello world!')
  end

  it 'say hello john' do
    get '/hello/john'
    expect(last_response.status).to eq 404
  end

  it 'say bye' do
    get '/bye'
    expect(last_response.status).to eq 404
  end

  it 'post hello' do
    post '/hello'
    expect(last_response.status).to eq 302
  end

  it 'delete hello' do
    delete '/hello'
    expect(last_response.status).to eq 404
  end
end
