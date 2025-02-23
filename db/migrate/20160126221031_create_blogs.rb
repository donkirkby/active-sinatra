class CreateBlogs < ActiveRecord::Migration[4.2]
  def change
    create_table :blogs do |t|
      t.string :name, limit: 30
      t.string :tagline, limit: 30
    end
  end
end
