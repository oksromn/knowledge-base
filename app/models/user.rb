class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :notes, dependent: :destroy
  has_many :folders, dependent: :destroy

  after_create do
    self.folders.create(name: "Все записи", default: true)
  end
end
