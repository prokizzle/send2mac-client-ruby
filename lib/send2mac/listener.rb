require 'mechanize'
require 'launchy'

module Send2MacClient
  class Listener

    def initialize
      @agent = Mechanize.new
    end

    def listen
      puts "Listening..."
      loop do
        url = @agent.get("http://send2mac.com/get.php?APIKey=#{$api_key}").parser.xpath("//html/body/p").text
        unless (url =~ /\/\//).nil?
          url = url.gsub(/\r/,"")
          url = url.gsub(/\n/,"")
          puts url
          Launchy.open url.to_s
        else
          sleep 2
        end
      end
    end
  end
end
