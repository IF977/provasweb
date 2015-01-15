class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.references :prof_id, index: true
      t.references :assunto_id, index: true

      t.timestamps
    end
  end
end
