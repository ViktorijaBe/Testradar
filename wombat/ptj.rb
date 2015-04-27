require 'wombat'

class PTJ
  include Wombat::Crawler

  base_url "http://www.ptj.de"
  path "/news"

  ausschreibungen "css=table>li", :iterator do
    was 'css=h2.dotted'
    inhalt 'css=p'
    datum 'css=div.datum'
    link 'css=a.intern'
  end
end

puts PTJ.new.crawl
