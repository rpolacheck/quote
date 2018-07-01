class CreateTexts < ActiveRecord::Migration[5.0]
  def change
    create_table :texts do |t|
      t.string :saying
      t.string :author
      t.timestamps
    end
  end
end
