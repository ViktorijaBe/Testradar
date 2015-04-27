require 'wombat'

class IBB
  include Wombat::Crawler
  
  base_url "http://www.ibb.de"
  path "/Foerderangebote.aspx"
  
  ausschreibungen "css=div.col", :iterator do
    titel 'css=h3'
    inhalt 'css=p'
    link 'css=a[href]'
  end
end  

puts IBB.new.crawl
