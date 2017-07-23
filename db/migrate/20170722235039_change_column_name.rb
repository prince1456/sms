class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    change_table :categorizations do |t|
      t.rename :categories_id, :category_id
      t.rename :category_id, :contact_id
    end

  end

end
