class CreateTbms < ActiveRecord::Migration[6.0]
  def change
    create_table :tbms do |t|
      t.string :name
      t.string :add
      t.integer :kin

      t.timestamps
    end
  end
end
