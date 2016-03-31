class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :title
      t.text :summary
      t.string :link

      t.timestamps null: false
    end
  end
end
