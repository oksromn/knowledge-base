class Folder < ApplicationRecord
  has_many :notes, dependent: :destroy
  belongs_to :user

  COLORS = %w[dark blue azure indigo purple pink red orange yellow lime]
end
