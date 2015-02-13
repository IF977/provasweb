class CreateProofAnswereds < ActiveRecord::Migration
  def change
    create_table :proof_answereds do |t|
      t.string :name
      t.string :email
      t.time :startTime
      t.time :endTime

      t.timestamps
    end
  end
end
