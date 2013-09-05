require 'mechanize'
require 'launchy'
require_relative 'listener.rb'

module Send2MacClient
  class Runner
    attr_accessor :client

    def initialize
      config_path = File.expand_path("../../config/api_key.yml", __FILE__)
      begin
        @config = YAML.load_file(config_path)
      rescue
        puts "Key not found. Please run 'rake init'"
        exit
      end
      $api_key = @config[:api_key]
      @client = Listener.new
    end

    def run
      client.listen
    end


  end
end
