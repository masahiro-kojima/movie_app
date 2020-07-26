class AddUrlToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :heroku_url, :string
    add_column :posts, :github_url, :string
  end
end
