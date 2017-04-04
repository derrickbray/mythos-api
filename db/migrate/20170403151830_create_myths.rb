class CreateMyths < ActiveRecord::Migration[5.0]
  def change
    create_table :myths do |t|
      t.string :title
      t.string :subtitle
      t.string :author
      t.text :body
      #t.references :character, foreign_key: true
      t.integer :order
      t.boolean :publish

      t.timestamps
    end
  end
end
