require 'mechanize'
require 'launchy'

module Send2MacClient
  class Listener

    def initialize
      @agent = Mechanize.new
    end

    def listen
      puts "Listening..."
      begin
        loop do
          url = @agent.get("http://send2mac.com/get.php?APIKey=#{$api_key}").parser.xpath("//html/body/p").text
          unless url == "File not found!"
            url = url.gsub(/\r/,"")
            url = url.gsub(/\n/,"")
            puts url
            Launchy.open url.to_s
          else
            sleep 2
          end
        end
      rescue SystemExit, Interrupt
        puts "","Shutting down..."
      end
    end


  end
end
