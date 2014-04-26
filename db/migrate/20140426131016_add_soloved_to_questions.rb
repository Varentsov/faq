class AddSolovedToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :soloved, :boolean, default: false
  end
end
