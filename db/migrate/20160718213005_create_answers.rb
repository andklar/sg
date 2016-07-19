class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :validation_string
      
      t.timestamps
    end
  end
end
