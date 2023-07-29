class CreateRunners < ActiveRecord::Migration[6.1]
  def change
    create_table :runners do |t|
      t.string :name
      t.string :email
      t.string :phone_number
    end
  end
end
