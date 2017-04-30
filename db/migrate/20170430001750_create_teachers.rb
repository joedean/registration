class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.references :company, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :mobile_phone
      t.string :email
      t.string :start_date
      t.string :end_date
      t.string :birth_date
      t.boolean :active
      t.boolean :contractor

      t.timestamps
    end
  end
end
