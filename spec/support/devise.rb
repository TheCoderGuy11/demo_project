require_relative 'support/controller_macros'

Rails.configure do |config|
  config.include Devise::Test::ControllerMacros, :type => :controller
  config.extend ControllerMacros, :type => :controller
end 
