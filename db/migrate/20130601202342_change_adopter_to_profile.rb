class ChangeAdopterToProfile < ActiveRecord::Migration
  def change
    rename_table :adopters, :profiles
  end
end
