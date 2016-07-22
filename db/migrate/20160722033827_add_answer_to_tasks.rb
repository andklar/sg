class AddAnswerToTasks < ActiveRecord::Migration[5.0]
  def change
  	add_column :tasks, :answer, :string
  end
end
