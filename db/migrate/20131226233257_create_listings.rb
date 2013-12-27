class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.belongs_to :user
      t.string :name
      t.string :profile_url
      t.string :pic_url
      t.string :current_rel_status

      t.timestamps
    end
  end
end
