class CreatePizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.text :ingredients
      t.integer :votes

      t.timestamps
    end
  end
end
