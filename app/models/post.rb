class Post < ActiveRecord::Base
  def self.recent
    order('created_at DESC')
  end
end
