class CreateCupboards < ActiveRecord::Migration[5.2]
  def change
    create_table :cupboards do |t|
      t.string :title, null: false
      t.timestamps
    end
  end
end
