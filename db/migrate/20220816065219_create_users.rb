class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :email
      t.integer :mobile
      t.integer :role_id
      t.boolean :is_active

      t.timestamps
    end
    add_column :Users, :password, :string
  end
end
