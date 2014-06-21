class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :title
      t.text :caption
      t.text :discription

      t.timestamps
    end
  end
end
