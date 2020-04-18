class CreateTodolists < ActiveRecord::Migration[5.2]
  def change
    create_table :todolists do |t|

      t.timestamps
      t.string :title
      t.text :content
    end
  end
end
