class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :city
      t.string :company
      t.string :role
      t.string :photo_url

      t.timestamps
    end
  end
end
