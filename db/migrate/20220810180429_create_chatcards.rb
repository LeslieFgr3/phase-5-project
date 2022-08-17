class CreateChatcards < ActiveRecord::Migration[6.1]
  def change
    create_table :chatcards do |t|
      t.integer :chat_id

      t.timestamps
    end
  end
end
