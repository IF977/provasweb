class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :cpf
      t.string :date
      t.string :phone
      t.references :user, index: true

      t.timestamps
    end
  end
end
