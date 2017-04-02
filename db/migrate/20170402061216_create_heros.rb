class CreateHeros < ActiveRecord::Migration[5.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.text :powers
      t.string :house
      t.string :spouse
      t.string :parents
      t.string :children
      t.text :description

      t.timestamps
    end
  end
end
