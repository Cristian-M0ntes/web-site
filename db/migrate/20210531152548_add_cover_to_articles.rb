class AddCoverToArticles < ActiveRecord::Migration[6.1]
  def change
    add_attachment :articles,:cover
  end
end
