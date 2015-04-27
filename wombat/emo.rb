require 'wombat'

class EMO
  include Wombat::Crawler
  
  base_url "http://www.emo-berlin.de"
  path "/de/service/foerderung"
  
  Ausschreibungen do |a|
    a.was "css=h4", :list
    a.link "css=a.external-link-new-window", :list
  end
end

puts EMO.new.crawl
  
