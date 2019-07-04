class CreateCpmUserInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :cpm_user_infos do |t|
      t.string :name

      t.timestamps
    end
  end
end
