class ChangeColumnPermalinkToStringPages < ActiveRecord::Migration
  def change
  	remove_column :pages, :permalink
  	add_column    :pages, :permalink, :string
  end
end
