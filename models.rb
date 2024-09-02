require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection
class User < ActiveRecord::Base
    has_many :tag
    has_many :like
    has_many :post, through: :tag
end

class Post < ActiveRecord::Base
    has_many :tag
    has_many :like
    has_many :post, through: :tag
end

class Tag < ActiveRecord::Base
    belongs_to :user
    belongs_to :post
end

class Like < ActiveRecord::Base
    belongs_to :user
    belongs_to :post
end