class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :web_site
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
