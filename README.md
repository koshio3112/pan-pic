usersテーブル
id
email -string- null: false unique:true
password -string- null: false unique:true
nickname -string- null: false

アソシエーション
has_many :tweets
has_many :favorites
has_many :favorite_tweets,
through: :favorites, source: :tweet
has_many :comments

tweets テーブル

id
text -text-
image -text-
user_id -integer- null: false foreign_key: true
favorits -integer- foreign_key: true

アソシエーション
belong_to :user
has_many :comments
has_many :favorites


commentsテーブル

id
text -text- null: false
user_id -integer- foreign_key: true
tweet_id -integer- foreign_key: true
-integer- null: false, foreign_key: true

アソシエーション
belongs_to :tweet
belongs_to :user

favoritesテーブル
id
user_id
-integer- null: false foreign_key: true

tweet_id
-integer- null: false foreign_key: true

アソシエーション
belong_to :user
belongs_to :tweet