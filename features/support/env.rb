require 'rspec'
require 'logger'
require 'brstring'
require 'httparty'
require 'pry'
require_relative 'utils'

URL ||= YAML.load_file(File.dirname(__FILE__) + "/config/urls.yml")
ENDPOINT ||= YAML.load_file(File.dirname(__FILE__) + "/config/endpoints.yml")

Dir[File.join(File.dirname(__FILE__), 'spec_helper/*.rb')].each {|file| require file}

World(REST)
