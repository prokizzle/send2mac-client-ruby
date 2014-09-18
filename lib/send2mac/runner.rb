require 'mechanize'
require 'launchy'
require 'yaml'
require 'highline/import'

module Send2MacClient
  class Runner
    attr_accessor :client

    def initialize
      File.file?(config_path) ? @config = YAML.load_file(config_path) : setup_api_key
      $api_key = @config[:api_key]
      @client = Listener.new
    end

    def config_path
      File.expand_path("#{ENV['HOME']}/.send2mac", __FILE__)
    end

    def setup_api_key
      say("\nPlease enter your Send2Mac API Key")
      puts ""
      key    = ask("API Key:   ")
      this = {api_key: key.to_s}
      File.open(config_path, "w") do |f|
        f.write(this.to_yaml)
      end
      @config = YAML.load_file(config_path)
    end

    def run
      client.listen
    end


  end
end
