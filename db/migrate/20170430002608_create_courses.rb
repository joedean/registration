class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.references :class_room, foreign_key: true
      t.string :category
      t.string :name
      t.string :level
      t.integer :start_age
      t.integer :end_age
      t.integer :wday
      t.datetime :start_at
      t.datetime :end_at
      t.integer :max_size

      t.timestamps
    end
  end
end
