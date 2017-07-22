class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :number
      t.string :body
      t.string :status
      t.string :direction

      t.timestamps
    end
  end
end
