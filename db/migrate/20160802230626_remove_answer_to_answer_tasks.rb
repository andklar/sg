class RemoveAnswerToAnswerTasks < ActiveRecord::Migration[5.0]
  def change
    remove_column :answer_tasks, :answer, :string
  end
end
