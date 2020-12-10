class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :content_ja
      t.string :content_en
      t.references :level, foreign_key: true

      t.timestamps
    end
  end
end
