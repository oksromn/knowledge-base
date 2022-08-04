class Note < ApplicationRecord
  belongs_to :user
  belongs_to :folder

  acts_as_taggable_on :tags

  has_rich_text :content
end
