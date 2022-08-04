class CreateShaams < ActiveRecord::Migration[7.0]
  def change
    create_table :shaams do |t|
      t.string :title

      t.timestamps
    end
  end
end
