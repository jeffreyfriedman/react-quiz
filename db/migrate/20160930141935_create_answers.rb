class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :question
      t.string :body
      t.boolean :correct, null: false, default: false
    end
  end
end
