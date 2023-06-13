class CreateBand < ActiveRecord::Migration[7.0]
  def change
    create_table :bands do |t|
      t.string :name, uniqueness: true, null: false, index: true 
      

      t.timestamps
    end
  end
end
