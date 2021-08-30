class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :image
      t.integer :height
      t.integer :weight
      t.integer :age
      t.string :goal

      t.timestamps
    end
  end
end
