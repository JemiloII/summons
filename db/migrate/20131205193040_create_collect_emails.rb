class CreateCollectEmails < ActiveRecord::Migration
  def change
    create_table :collect_emails do |t|
      t.string :email

      t.timestamps
    end
  end
end
