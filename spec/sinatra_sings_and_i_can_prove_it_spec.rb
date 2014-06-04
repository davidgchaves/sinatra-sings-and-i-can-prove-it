ENV['RACK_ENV'] = 'test'

require_relative '../sinatra_sings_and_i_can_prove_it'
require 'rspec'
require 'rack/test'

describe "Sinatra sings and I can prove it App" do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "sings the RSpec tune" do
    get "/"
    expect(last_response).to be_ok
  end
end
