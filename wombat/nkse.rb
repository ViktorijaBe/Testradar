require 'wombat'

class NKSE
  include Wombat::Crawler

  base_url "http://www.nks-energie.de"
  path "/Aktuelles_NKS_Newsservice"

  ausschreibungen "css=div#nkse_newslist_list", :iterator do
    titel 'css=h2'
    inhalt 'css=div.nkse_newslist_maintext'
    link 'css=div.nkse_newslist_links'
  end
end

puts NKSE.new.crawl
