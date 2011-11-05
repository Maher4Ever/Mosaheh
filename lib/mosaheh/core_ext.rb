Dir["#{File.dirname(__FILE__)}/core_ext/*.rb"].each do |path|
  require "mosaheh/core_ext/#{File.basename(path, '.rb')}"
end
