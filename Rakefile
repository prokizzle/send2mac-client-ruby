require 'highline/import'
require 'yaml'
task :init do
  say("\nPlease enter your Send2Mac API Key")
  puts ""
  key    = ask("API Key:   ")
  this = {api_key: key.to_s}
  puts this.to_yaml
  dir = %x{mkdir -p config} rescue false

  config_path = File.expand_path("../config/api_key.yml", __FILE__)
  File.open(config_path, "w") do |f|
    f.write(this.to_yaml)
  end
end
