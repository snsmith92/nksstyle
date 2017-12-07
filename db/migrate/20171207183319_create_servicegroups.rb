class CreateServicegroups < ActiveRecord::Migration[5.0]
  def change
    create_table :servicegroups do |t|
      t.string :title
      t.integer :company_id
      t.timestamps
    end
    add_index :servicegroups, :company_id
  end
end
