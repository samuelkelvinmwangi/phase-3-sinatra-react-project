class CreateRaces < ActiveRecord::Migration[6.1]
  def change
    create_table :races  do |t|
      t.string :name
      t.integer :distance
      t.integer :runner_id
    end
  end
end
