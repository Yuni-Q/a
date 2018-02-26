class Post < ActiveRecord::Base
  resourcify
  include Authority::Abilities
  belongs_to :classification
  belongs_to :user
  validates :title, :content, presence: true
end
