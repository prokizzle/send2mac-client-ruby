module Send2MacClient
  Dir[File.dirname(__FILE__) + '/send2mac/*.rb'].each do |file|
    require file
  end
end
