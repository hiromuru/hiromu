class AddSomeToSkils < ActiveRecord::Migration
  def change
    add_column :skils, :discription, :text
  end
end
