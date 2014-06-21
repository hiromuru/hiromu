class CreateSkils < ActiveRecord::Migration
  def change
    create_table :skils do |t|
      t.string :name
      t.integer :level

      t.timestamps
    end
  end
end
