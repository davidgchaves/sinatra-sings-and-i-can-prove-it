ENV['RACK_ENV'] = 'test'

require_relative '../sinatra_sings_and_i_can_prove_it'
require 'rspec'
require 'rack/test'
require 'capybara/rspec'

describe "Sinatra sings and I can prove it App", type: :feature do
  include Rack::Test::Methods

  def app
    Capybara.app = Sinatra::Application.new
  end

  it "sings the RSpec tune" do
    get "/"
    expect(last_response).to be_ok
  end

  it "sings loud and clear" do
    get "/", tune_title: "RSpec"
    expect(last_response.body).to eq "Singing the RSpec tune loud and clear"
  end

  it "sings a different tune" do
    get "/", tune_title: "My Way"
    expect(last_response.body).to include "My Way"
  end

  it "sings the Capybara-meets-RSpec tune" do
    visit "/?tune_title=Capybara-meets-RSpec"
    expect(page).to have_content "Capybara-meets-RSpec tune"
  end
end
