class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.string :title, null: false
      t.string :sku, null: false
      t.references :cupboard, foreign_key:true
      t.timestamps
    end
  end
end
