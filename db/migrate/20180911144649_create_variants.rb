class CreateVariants < ActiveRecord::Migration[5.2]
	def change
		create_table :variants do |t|
			t.string  :project
			t.string  :hkle
			t.integer :quality
			t.string  :modification
			t.string  :chromosome
			t.integer :position
			t.string  :direction
			t.string  :prepost
			t.integer :value
			t.string  :subject

			t.index :project
			t.index :hkle
			t.index :quality
			t.index :modification
			t.index :chromosome
			t.index :position
			t.index :direction
			t.index :prepost
			t.index :value
			t.index :subject

			t.timestamps
		end
	end
end
