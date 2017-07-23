class Category < ApplicationRecord
  has_many :categorizations, dependent: :destroy
  has_many :contacts, through: :categorizations, source: :contact
end
