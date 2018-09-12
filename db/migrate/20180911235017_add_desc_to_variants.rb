class AddDescToVariants < ActiveRecord::Migration[5.2]
  def change
    add_column :variants, :desc, :string
  end
end
