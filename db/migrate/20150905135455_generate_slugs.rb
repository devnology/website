class GenerateSlugs < ActiveRecord::Migration
  def change
    add_column :events, :slug, :string
    add_index :events, :slug

    add_column :blogs, :slug, :string
    add_index :blogs, :slug
  end
end
