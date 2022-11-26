class Crypto < ApplicationRecord
  def calculate_value(amount)
    (current_price.to_f * amount.to_f).round(2)
  end

  def current_price
    url = 'https://api.coingecko.com/api/v3/coins/markets'
    request = HTTParty.get(url + "?vs_currency=aud&ids=#{slug}&order=market_cap_desc&per_page=100&page=1&sparkline=false")
    response = JSON.parse(request.body)
    response[0]['current_price']
  end
end
