# frozen_string_literal: true

# Items in a collection
class CreateCollectables < ActiveRecord::Migration[6.0]
  def change
    create_table :collectables do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.references :collection, null: false, foreign_key: true
      t.integer :likes
      t.boolean :for_sale
      t.string :image

      t.timestamps
    end
  end
end
