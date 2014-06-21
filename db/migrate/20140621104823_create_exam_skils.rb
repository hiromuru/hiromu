class CreateExamSkils < ActiveRecord::Migration
  def change
    create_table :exam_skils do |t|
      t.integer :exam_id
      t.integer :skil_id

      t.timestamps
    end
  end
end
