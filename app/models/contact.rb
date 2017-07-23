class Contact < ApplicationRecord
   has_many :categorizations, dependent: :destroy
   has_many :categories, through: :categorizations




  def self.search_contacts(search)
    where("number ILIKE ? OR body ILIKE ?", "%#{search}", "%#{search}")
  end
end
