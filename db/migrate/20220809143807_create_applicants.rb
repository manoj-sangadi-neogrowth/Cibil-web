class CreateApplicants < ActiveRecord::Migration[7.0]
  def change
    create_table :applicants do |t|
      t.string :First_name
      t.string :middle_name
      t.string :last_name
      t.string :gender
      t.date :date_of_birth
      t.string :pan_number
      t.integer :mobile
      t.string :country
      t.string :state
      t.integer :pin_code

      t.timestamps
    end
    add_column :applicants, :email, :string
  end
end
