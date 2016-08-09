class AddAnswerToAnswerTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :answer_tasks, :answer, :string
  end
end
