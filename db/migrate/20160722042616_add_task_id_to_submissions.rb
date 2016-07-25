class AddTaskIdToSubmissions < ActiveRecord::Migration[5.0]
  def change
  	add_column :submissions, :task_id, :integer
  end
end
