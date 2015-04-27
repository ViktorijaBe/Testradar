require 'wombat'

class VDIVDE
  include Wombat::Crawler

  base_url "http://www.vdivde-it.de"
  path "/leistungsspektrum/ausschreibungen"

  ausschreibungen "css=div#parent-fieldname-text>li", :iterator do
    titel 'b'
    frist 'li'
    link 'a.external-link'
  end
end

puts VDIVDE.new.crawl
