class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.float :price
      t.boolean :is_special
      t.string :size
      t.belongs_to :menu

      t.timestamps
    end
  end
end
