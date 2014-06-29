class AddSomeToExams < ActiveRecord::Migration
  def change
    add_column :exams, :c_at, :date
    add_column :exams, :url, :string
  end
end
