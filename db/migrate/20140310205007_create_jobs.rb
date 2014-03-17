class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :logo_url
      t.string :company
      t.string :role
      t.text :description

      t.timestamps
    end
  end
end
