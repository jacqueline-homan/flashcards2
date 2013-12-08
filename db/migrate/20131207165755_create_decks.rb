class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :name
      t.timestamps
    end
    # creeate_table
    # add_column
    # add_index
  end
end

  