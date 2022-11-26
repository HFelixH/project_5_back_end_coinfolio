class CreateCryptos < ActiveRecord::Migration[6.1]
  def change
    create_table :cryptos do |t|
      t.string :name
      t.string :symbol
      t.string :slug
      t.float :price
      t.float :market_cap
      t.integer :market_cap_rank
      t.float :total_volume
      t.float :high_24h
      t.float :low_24h
      t.float :price_change_24h
      t.float :price_change_percentage_24h
      t.float :market_cap_change_24h
      t.float :market_cap_change_percentage_24h
      t.float :circulating_supply
      t.float :total_supply
      t.float :max_supply
      t.float :ath
      t.float :ath_change_percentage
      t.string :ath_date
      t.float :atl
      t.float :atl_change_percentage
      t.string :atl_date
      t.string :roi
      t.string :last_updated
      
      t.timestamps
    end
  end
end
