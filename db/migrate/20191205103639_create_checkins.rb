class CreateCheckins < ActiveRecord::Migration[6.0]
  def change
    create_table :checkins do |t|
      t.string :description
      t.decimal :lat
      t.decimal :lng

      t.timestamps
    end
  end
end
