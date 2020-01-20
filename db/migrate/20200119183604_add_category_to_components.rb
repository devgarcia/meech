class AddCategoryToComponents < ActiveRecord::Migration[6.0]
  def change
    add_column :components, :category, :string
  end
end
