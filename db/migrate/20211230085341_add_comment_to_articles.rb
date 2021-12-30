class AddCommentToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :comments, :string
  end
end
