class CreateGods < ActiveRecord::Migration[5.0]
  def change
    create_table :gods do |t|
      t.string :name

      t.timestamps
    end
  end
end
