class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.references :author, index: true
      t.date :date
      t.text :excerpt
      t.text :content

      t.timestamps
    end
  end
end
