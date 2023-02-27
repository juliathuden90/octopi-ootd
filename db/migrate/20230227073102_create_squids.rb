class CreateSquids < ActiveRecord::Migration[7.0]
  def change
    create_table :squids do |t|
      t.string :name
      t.integer :price
      t.string :image_url
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
