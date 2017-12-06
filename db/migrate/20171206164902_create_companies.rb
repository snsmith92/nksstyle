class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.text :address
      t.string :phone
      t.string :email
      t.string :website
      t.string :facebook
      t.timestamps
    end
  end
end
