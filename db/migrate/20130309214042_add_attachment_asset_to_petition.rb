class AddAttachmentAssetToPetition < ActiveRecord::Migration
  def self.up
    add_column :petitions, :asset_file_name, :string
    add_column :petitions, :asset_content_type, :string
    add_column :petitions, :asset_file_size, :integer
    add_column :petitions, :asset_updated_at, :datetime
  end

  def self.down
    remove_column :petitions, :asset_file_name
    remove_column :petitions, :asset_content_type
    remove_column :petitions, :asset_file_size
    remove_column :petitions, :asset_updated_at
  end
end
