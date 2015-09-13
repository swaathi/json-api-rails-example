class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :access
      t.string :secret

      t.timestamps null: false
    end
  end
end
