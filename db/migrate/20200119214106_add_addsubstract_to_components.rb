class AddAddsubstractToComponents < ActiveRecord::Migration[6.0]
  def change
    add_column :components, :add_substract, :integer, default: 0
  end
end
