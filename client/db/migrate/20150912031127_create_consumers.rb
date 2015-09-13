class CreateConsumers < ActiveRecord::Migration
  def change
    create_table :consumers do |t|

      t.timestamps null: false
    end
  end
end
