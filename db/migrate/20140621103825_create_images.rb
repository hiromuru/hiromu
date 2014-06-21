class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image
      t.references :parent, polymorphic: true

      t.timestamps
    end
  end
end
