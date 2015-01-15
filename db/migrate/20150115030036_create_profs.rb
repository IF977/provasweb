class CreateProfs < ActiveRecord::Migration
  def change
    create_table :profs do |t|
      t.string :nome
      t.string :email
      t.string :senha

      t.timestamps
    end
  end
end
