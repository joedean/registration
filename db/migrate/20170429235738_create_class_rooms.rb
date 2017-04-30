class CreateClassRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :class_rooms do |t|
      t.references :company, foreign_key: true
      t.string :name
      t.string :size
      t.boolean :active

      t.timestamps
    end
  end
end
