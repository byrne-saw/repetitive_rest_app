class CreatePogs < ActiveRecord::Migration[5.2]
  def change
    create_table :pogs do |t|
      t.string :color
      t.integer :size

      t.timestamps
    end
  end
end
