class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :subject
      t.string :meaning_ja
      t.string :meaning_en
      t.references :level, foreign_key: true

      t.timestamps
    end
  end
end
