class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :question
      t.string :option_one
      t.string :option_two
      t.string :url_slug

      t.timestamps null: false
    end
  end
end
