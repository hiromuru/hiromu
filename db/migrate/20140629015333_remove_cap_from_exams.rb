class RemoveCapFromExams < ActiveRecord::Migration
  def change
    remove_column :exams, :caption, :text
  end
end
