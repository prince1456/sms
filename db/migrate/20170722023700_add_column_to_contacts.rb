class AddColumnToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :sid, :string
  end
end
