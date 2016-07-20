class CreatePhotoTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_tasks do |t|

      t.timestamps
    end
  end
end
