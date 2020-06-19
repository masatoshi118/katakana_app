class CreateQuestion < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :name
      t.string :questions_image_file_name
      t.timestamps
    end
  end
end
