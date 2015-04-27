require 'wombat'

class BMBF
  include Wombat::Crawler
  
  base_url "http://www.bmbf.de"
  path "/foerderungen/677.php"
  Ausschreibungen do |a|
    a.was"css=ul#presslist", :list
    
  end
end

puts BMBF.new.crawl
