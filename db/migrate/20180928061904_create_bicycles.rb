class CreateBicycles < ActiveRecord::Migration[5.2]
  def change
    create_table :bicycles do |t|
      t.string :bicycle_type

      t.timestamps
    end
  end
end
