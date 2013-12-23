class CreateCategories < ActiveRecord::Migration

  def up
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end

    add_column :entries, :category_id, :integer

  end

  def down
    remove_column :entries, :category_id

    drop_table :categories
  end

end
