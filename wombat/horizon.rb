require 'wombat'

class HORIZON
  include Wombat::Crawler
  
  base_url "ec.europa.eu"
  path "/programmes/horizon2020/en/newsroom/550/533"
  
  ausschreibungen "css=div.region.egion-content>li", ;iterator do
    titel 'div.field-content[0]'
    inhalt'div.field-content[1]'
    link'a[href]'
  end
end

puts HORIZON.new.crawl
