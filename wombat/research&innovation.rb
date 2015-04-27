require 'wombat'

class REIN
  include Wombat::Crawler

  base_url "ec.europa.eu"
  path "/research/participants/portal/desktop/en/opportunities/h2020/call_updates.html"

  alle "css=table#LatestInfoList>li", :iterator do
    programm 'css=td.sorting_1'
    inhalt 'css=td[1]'
    update 'css=td[2]'
    frist'css=td[3]'
    link 'css=a[href]'
  end
end

puts REIN.new.crawl
