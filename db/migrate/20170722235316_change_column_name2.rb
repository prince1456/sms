class ChangeColumnName2 < ActiveRecord::Migration[5.0]
  def change
    change_table :categorizations do |t|
      t.rename :contacts_id, :category_id
    end
  end
end
