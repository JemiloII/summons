class CreateLandings < ActiveRecord::Migration
  def change
    create_table :landings do |t|
      t.string :collect_emails

      t.timestamps
    end
  end
end
