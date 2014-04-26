class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :body
      t.integer :views_count, default: 0, null: false
      t.integer :rating, default: 0, null: false

      t.timestamps
    end
  end
end
