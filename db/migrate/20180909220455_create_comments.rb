class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :content
      t.datetime :request_time
      t.string :client_ip
      t.timestamps null: false
    end
  end
end
