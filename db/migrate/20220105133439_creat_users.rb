class CreatUsers < ActiveRecord::Migration[7.0]
  def change
    t.string :pass
  end
end
