class RemoveSubmissionIdFromTasks < ActiveRecord::Migration[5.0]
  def change
  	remove_column :tasks, :submission_id
  end
end
