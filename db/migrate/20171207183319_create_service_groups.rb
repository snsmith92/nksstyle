class CreateServiceGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :service_groups do |t|
      t.string :title
      t.integer :company_id
      t.timestamps
    end
    add_index :service_groups, :company_id
  end
end
