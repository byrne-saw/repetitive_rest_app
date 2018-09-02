class CreateMainzers < ActiveRecord::Migration[5.2]
  def change
    create_table :mainzers do |t|
      t.string :position
      t.integer :number

      t.timestamps
    end
  end
end
