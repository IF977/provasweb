class AddTokenToProofAnswered < ActiveRecord::Migration
  def change
    add_column :proof_answereds, :token, :string
  end
end
