class CreateImageheaders < ActiveRecord::Migration[5.1]
  def change
    create_table :imageheaders do |t|
      t.string :picture

      t.timestamps
    end
  end
end
