require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'


def cryptos

# EXTRAIRE la page, la div où se trouve les cryptos
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
array_crypto = page.xpath("//tbody/tr")

array_cryptos = []
line = 1

#extraire le corps avec les symbol et price
array_crypto.each do |node|
  symbol = node.xpath("//tbody/tr[#{line}]/td[3]/div").text
  price = node.xpath("//tbody/tr[#{line}]/td[5]/a").text
  line += 1
  result = Hash.new
  result[symbol] = price
  array_cryptos.push(result)
  end
  return array_cryptos
end
puts cryptos
