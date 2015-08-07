class User < ActiveRecord::Base
  include IdentityCache

  cache_index :name

  has_many :items
  cache_has_many :items, :embed => true
end
