class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :body
      t.string :from
      t.integer :rating, default: 0, null: false
      t.references :question, index: true

      t.timestamps
    end
  end
end
