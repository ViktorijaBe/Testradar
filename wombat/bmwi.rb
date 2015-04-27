require 'wombat'

class BMWI
  include Wombat::Crawler
  
  base_url "http://www.bmwi.de"
  path "/DE/Service/ausschreibungen.html"
  
  ausschreibungen "css=div.listViw", :iterator do
    was 'css=h3.listTitle', :list
    behoerde'css=td[3]', :list
    frist 'css=td[4]', :list
    link 'css=a[href]', :list
  end
end

puts BMWI.new.crawl
