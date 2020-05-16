class AddShopUrlToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :shop_url, :text
  end
end
