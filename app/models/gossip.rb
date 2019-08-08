class Gossip < ApplicationRecord
  belongs_to :user
  validates :title, 
    presence: true,
    length: { in: 3..14 }
  has_many :comments, :as => :commentable, dependent: :destroy
  has_many :join_table_gossip_tags 
  has_many :tags, through: :join_table_gossip_tags
  has_many :likes, :as => :likeable, dependent: :destroy
end
