class DeviseCreateRequestors < ActiveRecord::Migration
  def change
    create_table(:requestors) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :requestors, :email,                :unique => true
    add_index :requestors, :reset_password_token, :unique => true
    # add_index :requestors, :confirmation_token,   :unique => true
    # add_index :requestors, :unlock_token,         :unique => true
    # add_index :requestors, :authentication_token, :unique => true
  end

end
