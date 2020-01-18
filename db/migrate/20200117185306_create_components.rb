class CreateComponents < ActiveRecord::Migration[6.0]
  def change
    create_table :components do |t|
      t.string :name
      t.string :value
      t.string :size
      t.string :termination_mounting_style
      t.integer :quantity
      t.string :supplier
      t.string :order_code

      t.timestamps
    end
  end
end
