class CreateTokens < ActiveRecord::Migration[6.1]
  def change
    create_table :tokens do |t|
      t.integer :board_id
      t.integer :horizontal
      t.integer :vertical
      t.integer :token_value
    end
  end
end
