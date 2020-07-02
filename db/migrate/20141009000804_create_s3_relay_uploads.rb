class CreateS3RelayUploads < ActiveRecord::Migration[4.2]
  def change
    create_table :s3_relay_uploads do |t|
      t.string :uuid,
      t.integer :user_id
      t.string :parent_type
      t.integer :parent_id
      t.string :upload_type
      t.sring :prefix
      t.text :filename
      t.string :content_type
      t.string :state
      t.column :data, :json, default: "{}"
      t.datetime :pending_at
      t.datetime :imported_at

      t.timestamps
    end
  end
end
