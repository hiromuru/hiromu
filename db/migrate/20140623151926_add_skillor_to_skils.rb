class AddSkillorToSkils < ActiveRecord::Migration
  def change
    add_column :skils, :sors, :string
  end
end
