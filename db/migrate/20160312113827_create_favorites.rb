class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.references :favoritable, polymorphic: true, index: true

      t.timestamps null: false
    end

    add_index :favorites, [:favoritable_id, :favoritable_type], unique: true
  end
end
