class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :name
      t.references :teacher, index: true

      t.timestamps
    end
  end
end
