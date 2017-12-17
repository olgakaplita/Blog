class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, foreign_key: true
      # i.integer :article_id, index: true - inny zapis linijki powyzej

      t.timestamps
    end
    add_foreign_key :comments, :articles
  end
end
