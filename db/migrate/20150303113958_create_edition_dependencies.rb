class CreateEditionDependencies < ActiveRecord::Migration[4.2]
  def change
    create_table :edition_dependencies do |t|
      t.references :edition
      t.references :dependable, polymorphic: true
    end

    add_index :edition_dependencies, [:dependable_id, :dependable_type, :edition_id],
      unique: true, name: 'index_edition_dependencies_on_dependable_and_edition'
  end
end
