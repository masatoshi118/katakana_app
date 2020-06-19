class CreateKatakana < ActiveRecord::Migration[6.0]
  def change
    create_table :katakanas do |t|
      t.string :name
      t.string :katakana_image
      t.timestamps
    end
  end
end
