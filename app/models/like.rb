class Like < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: :user_id
  belongs_to :post, class_name: 'Post', foreign_key: :post_id

  def likes_counter
    post.increment!(:likes_counter)
  end
end
