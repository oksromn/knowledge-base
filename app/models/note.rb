class Note < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :folders

  acts_as_taggable_on :tags

  has_rich_text :content
end
