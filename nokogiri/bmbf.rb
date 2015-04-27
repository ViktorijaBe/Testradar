
require 'rubygems'
require 'nokogiri'
require 'open-uri'




page = Nokogiri::HTML(open('http://www.bmbf.de/foerderungen/677.php'))
page.css('li.pmFOR').each do |el|
   puts el.text
end
