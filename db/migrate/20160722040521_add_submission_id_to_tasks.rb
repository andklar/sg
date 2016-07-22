class AddSubmissionIdToTasks < ActiveRecord::Migration[5.0]
  def change
  	add_column :tasks, :submission_id, :integer
  end
end
