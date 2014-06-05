ENV['RACK_ENV'] = 'test'

require_relative '../../sinatra_sings_and_i_can_prove_it'
require 'capybara/cucumber'

Capybara.app = Sinatra::Application
