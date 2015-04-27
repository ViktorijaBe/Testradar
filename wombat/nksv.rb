require 'wombat'

class NKSV
  include Wombat::Crawler

  base_url "http://www.nks-verkehr.eu"
  path "/"

  ausschreibungen "css=div#c54", :iterator do
    titel 'css=b'
    inhalt 'css=p.bodytext[1]'
    link 'css=p.bodytext[2]'
  end
end

puts NKSV.new.crawl
