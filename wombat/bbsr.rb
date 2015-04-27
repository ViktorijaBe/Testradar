require 'wombat'

class BBSR
  include Wombat::Crawler
  
  base_url "http://www.bbsr.bund.de/"
  path "/BBSR/DE/Aktuell/Forschungsprojekte/forschungsprojekte_node.html"
  Ausschreibungen do |a|
    a.was "css=table#ausschreibung", :list
  end
end

puts BBSR.new.crawl
