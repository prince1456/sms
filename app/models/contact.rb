class Contact < ApplicationRecord
  def self.search_contacts(search)
    where("number ILIKE ? OR body ILIKE ?", "%#{search}", "%#{search}")
  end
end
