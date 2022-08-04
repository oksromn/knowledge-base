class Folder < ApplicationRecord
  has_and_belongs_to_many :notes
  belongs_to :user

  COLORS = %w[dark blue azure indigo purple pink red orange yellow lime]
end
