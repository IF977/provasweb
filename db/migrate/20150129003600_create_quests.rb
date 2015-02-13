class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.integer :level
      t.references :discipline, index: true
      t.references :subject, index: true
      t.text :question
      t.references :teacher, index: true

      t.timestamps
    end
  end
end
