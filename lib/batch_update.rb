require 'open-uri'
require 'kconv'

class BatchUpdate

  def self.execute
    @stoc.new(name: "aa")
    @stoc.save
    start = Time.now.strftime("%M").to_i.div(10)
    codes[start*6..start*6+5].each do |id|
      begin
        page = open("http://106.187.54.79/stock/{id}")
      rescue OpenURI::HTTPError
        return
      end
      html = Nokogiri::HTML(page.read, nil, 'utf-8')
      date = html.css('table tr').each do |doc|
      	doc = doc.css('td')
        @stock = Stock.new(
          previousprice: doc[0].inner_text,
          opening: doc[1].inner_text,
          high: doc[2].inner_text,
          low: doc[3].inner_text,
          volume: doc[4].inner_text,
          price: doc[5].inner_text,
          name: doc[6].inner_text,
          code: doc[7].inner_text,
          market: doc[8].inner_text,
          chart: doc[9].inner_text
          )
        @stock.save
      end
    end
  end

end