class CreateAnswerTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :answer_tasks do |t|
      t.string :validation_string

      t.timestamps
    end
  end
end
