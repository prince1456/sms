class CreateCategorizations < ActiveRecord::Migration[5.0]
  def change
    create_table :categorizations do |t|
      t.references :contacts, foreign_key: true,index: true
      t.references :categories, foreign_key: true, index: true

      t.timestamps
    end
  end
end
