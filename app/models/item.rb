class Item < ActiveRecord::Base
  include IdentityCache
  belongs_to :user
end
